from django.conf.urls import url, include
from django.contrib import admin
from django.views.generic import TemplateView

urlpatterns = [
    url(r'^option1/$', TemplateView.as_view(template_name='base.html',), name='option1'),
    url(r'^option2/$', TemplateView.as_view(template_name='base2.html',), name='option2'),

    url(r'^admin/', admin.site.urls),

    # Shared Application
    url(r'^shared/', include('shared.urls'), name='shared'),
    url(r'^impersonate/', include('impersonate.urls')),
]
