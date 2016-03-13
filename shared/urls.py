from django.conf.urls import patterns, url

urlpatterns = patterns('shared.views',
    url(r'^collect/static/$', 'update_static_resources', name='update_static_resources'),
)
