from django.conf.urls import patterns, url

urlpatterns = patterns(
    'external.views',
    url(r'^$', 'home', name='home'),
    url(r'^about/$', 'about_us', name='about_us'),
    url(r'^services/$', 'services', name="services"),
)
