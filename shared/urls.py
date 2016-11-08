from django.conf.urls import url

from shared import views

urlpatterns = [
    url(r'^collect/static/$', views.update_static_resources, name='update_static_resources'),
]
