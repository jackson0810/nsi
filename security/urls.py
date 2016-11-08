from django.conf import settings
from django.conf.urls import url

from security import views

urlpatterns = [
    url(r'^login/$', views.login_form, name='login'),
    url(r'^logout/$', views.user_logout, name='logout'),
    url(r'^password/reset/$', views.reset_password, name='reset_password'),
    url(r'^password/create/{uuid_pattern}/{uuid_pattern}/$'.format(uuid_pattern=settings.UUID_PATTERN_REGEX),
        views.create_new_password, name='create_new_password'),
    url(r'^team/members/$', views.team_members, name='team_members'),
    url(r'^team/member/{}/$'.format(settings.UUID_PATTERN_REGEX), views.team_members, name='edit_team_member')
]
