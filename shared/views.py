from django.shortcuts import render
from django.contrib import messages

from shared.utilities import collect_static


def update_static_resources(request):
    try:
        collect_static()

        messages.success(request, 'The Collect Static script ran successfully')
    except Exception as e:
        messages.error(request, 'Something happened: {}'.format(e))

    return render(request, 'collect_static.html')
