from datetime import datetime

from django.contrib.sites.shortcuts import get_current_site
from django.shortcuts import render, redirect
from django.contrib import messages
from django.conf import settings

from external.forms import ContactItemForm
from shared.models import NewsItem, FunctionalCapability, ImageItem, ContactItem, TaskOrder


def home(request):
    latest_news = NewsItem.objects.filter(featured=True)
    featured_images = ImageItem.objects.filter(featured=True)

    return render(request, 'home.html', {'latest_news': latest_news, 'featured_images': featured_images})


def about_us(request):
    return render(request, 'about.html')


def services(request):
    return render(request, 'services.html')


def clients_partners(request):
    return render(request, 'clients-partners.html')


# Locations
def locations(request, location):
    return render(request, 'locations/{}.html'.format(location))


def jacksonville(request):
    return render(request, 'locations/jacksonville.html')


def patuxent_river(request):
    return render(request, 'locations/patuxent_river.html')


def seaporte(request):
    func_capabilities = FunctionalCapability.objects.filter(is_active=True)
    task_orders = TaskOrder.objects.filter(is_active=True).values_list('id', flat=True)

    odd_items = TaskOrder.objects.filter(id__in=[x for x in task_orders if not x % 2 == 0])
    even_items = TaskOrder.objects.filter(id__in=[x for x in task_orders if x % 2 == 0])

    return render(request, 'contract_vehicles/seaport-e.html', {'func_capabilities': func_capabilities, 'odd_items': odd_items, 'even_items': even_items})


def careers(request):
    return render(request, 'careers.html')


def news(request, news_year=datetime.today().year):
    new_items = NewsItem.objects.filter(is_active=True)
    new_years = sorted(list(set(new_items.values_list('news_year', flat=True))), reverse=True)

    news_data = []

    for item in new_years:
        temp_data = new_items.filter(news_year=item)

        temp = {
            'year': item,
            'count': temp_data.count()
        }

        news_data.append(temp)

    new_items = new_items.filter(news_year=news_year)

    return render(request, 'news.html', {'news_items': new_items, 'news_data': news_data, 'news_year': new_years})


def news_item(request, news_uuid):
    new_items = NewsItem.objects.filter(is_active=True)
    new_years = sorted(list(set(new_items.values_list('news_year', flat=True))), reverse=True)

    news_data = []

    for item in new_years:
        temp_data = new_items.filter(news_year=item)

        temp = {
            'year': item,
            'count': temp_data.count()
        }

        news_data.append(temp)

    item = NewsItem.objects.filter(news_uuid=news_uuid)

    return render(request, 'news.html', {'news_items': item, 'news_data': news_data})


def contact(request):
    if request.method == 'POST':
        form = ContactItemForm(request.POST)

        if form.is_valid():
            form.save()

            messages.success(request, 'Your information was submitted.')
            return redirect('external:contact')
        else:
            messages.error(request, settings.GENERIC_ERROR)
    else:
        form = ContactItemForm()

    return render(request, 'contact.html', {'form': form})
