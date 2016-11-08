from django.conf import settings
from django.core.urlresolvers import resolve, Resolver404


def custom_proc(request):
    current_url_name = None
    current_url_namespace = None

    if request.path_info:
        try:
            resolve_result = resolve(request.path)

            if resolve_result:
                current_url_name = resolve_result.url_name
                current_url_namespace = resolve_result.namespace
        except Resolver404:
            pass

    return {
        # Makes the URL name available so it can be used to determine which navigation item should be active.
        'current_url_name': current_url_name,
        'current_url_namespace': current_url_namespace,
        'EMPLOYEE_URL': settings.EMPLOYEE_URL
    }
