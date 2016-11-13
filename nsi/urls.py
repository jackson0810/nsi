from django.conf.urls import url, include
from django.contrib import admin

urlpatterns = [
    url(r'^', include('external.urls', namespace='external')),
    url(r'^employees/', include('employees.urls', namespace='employees')),
    url(r'^security/', include('security.urls', namespace='security')),

    url(r'^admin/', admin.site.urls),

    # Shared Application
    url(r'^shared/', include('shared.urls', namespace='shared')),
]
