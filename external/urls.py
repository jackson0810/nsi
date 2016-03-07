from django.conf.urls import patterns, url
from django.conf import settings

urlpatterns = patterns(
    'external.views',
    url(r'^$', 'home', name='home'),
    url(r'^about/$', 'about_us', name='about_us'),
    url(r'^services/$', 'services', name="services"),
    url(r'^clients/partners/$', 'clients_partners', name="clients_partners"),
    url(r'^locations/china-lake/$', 'china_lake', name='china_lake'),
    url(r'^locations/jacksonville/$', 'jacksonville', name='jacksonville'),
    url(r'^locations/patuxent-river/$', 'patuxent_river', name='patuxent_river'),
    url(r'^contract/vehicles/seaport-e/$', 'seaporte', name='seaporte'),
    url(r'^careers/$', 'careers', name='careers'),
    url(r'^news/$', 'news', name='news'),
    url(r'^news/(\d+)/$', 'news', name='news'),
    url(r'^news/item/{}/$'.format(settings.UUID_PATTERN_REGEX), 'news_item', name='news_item'),
    url(r'^contact/$', 'contact', name='contact'),

    # url(r'^404/$', TemplateView.as_view(template_name='404.html',)),
    # url(r'^500/$', TemplateView.as_view(template_name='500.html',)),
)
