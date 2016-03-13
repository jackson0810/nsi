from django.http import HttpResponse

from shared.utilities import collect_static


def update_static_resources(request):
    collect_static()

    return HttpResponse(status=200)
