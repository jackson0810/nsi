from django.shortcuts import render


def home(request):
    return render(request, 'home.html')


def about_us(request):
    return render(request, 'about.html')


def services(request):
    return render(request, 'services.html')


def clients_partners(request):
    return render(request, 'clients_partners.html')


def china_lake(request):
    return render(request, 'locations/china_lake.html')


def seaporte(request):
    return render(request, 'contract_vehicles/seaport-e.html')


def careers(request):
    return render(request, 'careers.html')


def news(request):
    return render(request, 'news.html')
