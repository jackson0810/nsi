from django.shortcuts import render

from shared.models import NewsItem, FunctionalCapability, ImageItem


def home(request):
    latest_news = NewsItem.objects.filter(featured=True)
    featured_images = ImageItem.objects.filter(featured=True)

    return render(request, 'home.html', {'latest_news': latest_news, 'featured_images': featured_images})


def about_us(request):
    return render(request, 'about.html')


def services(request):
    return render(request, 'services.html')


def clients_partners(request):
    return render(request, 'clients_partners.html')


def china_lake(request):
    return render(request, 'locations/china_lake.html')


def seaporte(request):
    func_capabilities = FunctionalCapability.objects.filter(is_active=True)
    func_values_list = func_capabilities.values_list('id', flat=True)

    odd_items = func_capabilities.filter(id__in=[x for x in func_values_list if not x % 2 == 0])
    even_items = func_capabilities.filter(id__in=[x for x in func_values_list if x % 2 == 0])

    return render(request, 'contract_vehicles/seaport-e.html', {'odd_items': odd_items, 'even_items': even_items})


def careers(request):
    return render(request, 'careers.html')


def news(request):
    new_items = NewsItem.objects.filter(is_active=True)

    return render(request, 'news.html', {'news_items': new_items})
