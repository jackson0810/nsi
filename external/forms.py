from django import forms
from django.forms import ModelForm


from shared.models import ContactItem


class ContactItemForm(ModelForm):
    category_choices = (('', 'Select Catergory ...'),('Employment', 'Employment'), ('Partnering', 'Partnering'),
                        ('News', 'News'), ('Website Issues', 'Website Issues'))

    category = forms.ChoiceField(choices=category_choices)

    class Meta:
        model = ContactItem
        fields = ['name', 'email', 'message', 'category']

