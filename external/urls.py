from django.conf.urls import url
from django.conf import settings

from external import views

urlpatterns = [
    url(r'^$', views.home, name='home'),
    url(r'^about/$', views.about_us, name='about_us'),
    url(r'^services/$', views.services, name="services"),
    url(r'^clients/partners/$', views.clients_partners, name="clients_partners"),
    url(r'^locations/(china-lake|jacksonville|patuxent-river|nor-rich-ar|philadelphia)/$', views.locations,
        name='locations'),

    url(r'^contract/vehicles/seaport-e/$', views.seaporte, name='seaporte'),
    url(r'^careers/$', views.careers, name='careers'),
    url(r'^news/$', views.news, name='news'),
    url(r'^news/(\d+)/$', views.news, name='news'),
    url(r'^news/item/{}/$'.format(settings.UUID_PATTERN_REGEX), views.news_item, name='news_item'),
    url(r'^contact/$', views.contact, name='contact'),

    # url(r'^404/$', TemplateView.as_view(template_name='404.html',)),
    # url(r'^500/$', TemplateView.as_view(template_name='500.html',)),
]
