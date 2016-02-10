import sys
import os

INTERP = "/home/nsishell/opt/python3.5.1/bin/python3"
# INTERP is present twice so that the new python interpreter knows the actual executable path

if sys.executable != INTERP:
    os.execl(INTERP, INTERP, *sys.argv)

cwd = os.getcwd()
sys.path.append(cwd)
sys.path.append(cwd + '/nsi')

sys.path.insert(0, cwd + '/navalsystemsin/bin')
sys.path.insert(0, cwd + '/navalsystemsinc/lib/python3.5/site-packages/django')
sys.path.insert(0, cwd + '/navalsystemsinc/lib/python3.5/site-packages')

os.environ['DJANGO_SETTINGS_MODULE'] = "nsi.settings"

from django.core.wsgi import get_wsgi_application

application = get_wsgi_application()
