from django.conf.urls import url, include
from django.contrib import admin
from django.views.generic import TemplateView

urlpatterns = [
    url(r'^$', TemplateView.as_view(template_name='base.html',)),

    url(r'^admin/', admin.site.urls),
    # Shared Application
    url(r'^shared/', include('shared.urls')),
    url(r'^impersonate/', include('impersonate.urls')),
]
