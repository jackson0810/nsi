from django import forms
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.forms import ReadOnlyPasswordHashField
from django.utils.safestring import mark_safe

from impersonate.views import impersonate
from django_object_actions import DjangoObjectActions

from .models import CustomUser
from shared.utilities import random_password_generator


class UserCreationForm(forms.ModelForm):
    password1 = forms.CharField(label='Password', widget=forms.PasswordInput())
    password1.required = False
    password2 = forms.CharField(label='Confirm Password', widget=forms.PasswordInput())
    password2.required = False

    class Meta:
        model = CustomUser
        fields = ('email', 'is_admin', 'is_active',)

    def clean(self):
        cleaned_data = super(UserCreationForm, self).clean()

        password1 = self.cleaned_data.get('password1')
        password2 = self.cleaned_data.get('password2')

        if password1 and (password1 != password2):
            msg = u'The two password fields do not match.'
            self._errors['password1'] = self.error_class([msg])
            self._errors['password2'] = self.error_class([msg])

            del cleaned_data['password1']

            if password2:
                del cleaned_data['password2']

        if cleaned_data['email']:
            cleaned_data['email'] = cleaned_data.get('email').lower()

        return cleaned_data

    def clean_password2(self):
        # make sure two passwords match
        password1 = self.cleaned_data.get('password1')
        password2 = self.cleaned_data.get('password2')

        if password1 and password2 and password1 != password2:
            raise forms.ValidationError('The two passwords provided do not match')

        return password2

    def save(self, commit=True):
        user = super(UserCreationForm, self).save(commit=False)

        if self.cleaned_data.get('password1'):
            user.set_password(self.cleaned_data['password1'])
        else:
            user.set_password(random_password_generator(10))

        if commit:
            user.save()

        return user


class UserChangeForm(forms.ModelForm):
    password = ReadOnlyPasswordHashField()

    class Meta:
        model = CustomUser
        fields = ('email', 'password', 'is_admin', 'is_active',)

    def clean_password(self):
        return self.initial['password']


class CustomUserAdmin(DjangoObjectActions, UserAdmin):
    form = UserChangeForm
    add_form = UserCreationForm

    list_display = ('id', 'email', 'is_admin', 'is_active',)
    list_filter = ('email',)
    search_fields = ('email',)

    fieldsets = (
        (None, {
            'fields': ('username', 'email', 'password', 'is_admin', 'is_active')
        }),
    )

    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'is_admin', 'is_active',)
        }),
    )
    ordering = ('email',)
    filter_horizontal = ()

    objectactions = ['impersonate_user_action', ]

    def impersonate_user_action(self, request, obj):
        return impersonate(request, obj.id)

    impersonate_user_action.label = mark_safe(u'<i class="icon-user icon-alpha75"></i>Impersonate User')
    impersonate_user_action.short_description = 'Impersonate User'


admin.site.register(CustomUser, CustomUserAdmin)
