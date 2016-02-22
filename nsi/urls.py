from django.conf.urls import url, include
from django.contrib import admin

urlpatterns = [
    url(r'^', include('{}.urls'.external, namespace='external')),

    url(r'^admin/', admin.site.urls),

    # Shared Application
    url(r'^shared/', include('shared.urls', namespace='shared')),
]
