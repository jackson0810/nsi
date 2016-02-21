from django.conf.urls import url, include, handler404, handler500
from django.conf import settings
from django.contrib import admin

urlpatterns = [
    url('handler404', 'django.views.defaults.page_not_found'),
    url('handler500', 'django.views.defaults.server_error'),
    url(r'^', include('{}.urls'.format(settings.URL_HOME), namespace=settings.URL_HOME_NAME)),

    url(r'^admin/', admin.site.urls),

    # Shared Application
    url(r'^shared/', include('shared.urls', namespace='shared')),
]
