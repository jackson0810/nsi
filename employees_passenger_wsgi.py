import sys
import os


INTERP = "/home/nsishell/employees.navalsystemsinc.com/env/bin/python"

if sys.executable != INTERP:
    os.execl(INTERP, INTERP, *sys.argv)

cwd = os.getcwd()
sys.path.append(cwd)
sys.path.append(cwd + '/nsi')

sys.path.insert(0, cwd + '/env/bin')
# sys.path.insert(0, cwd + '/env/lib/python3.5/site-packages/django')
# sys.path.insert(0, cwd + '/env/lib/python3.5/site-packages')

os.environ['DJANGO_SETTINGS_MODULE'] = "nsi.settings.production_employees"

from paste.exceptions.errormiddleware import ErrorMiddleware
from django.core.wsgi import get_wsgi_application
from whitenoise.django import DjangoWhiteNoise

application = get_wsgi_application()
application = DjangoWhiteNoise(application)

def testapplication(environ, start_response):
   status = '200 OK'
   output = 'Hello World! Running Python version ' + sys.version + '\n\n'
   response_headers = [('Content-type', 'text/plain'),
                       ('Content-Length', str(len(output)))]
   # to test paste's error catching prowess, uncomment the following line
   # while this function is the "application"
   raise("error")
   start_response(status, response_headers)
   return [output]

application = ErrorMiddleware(application, debug=True)
