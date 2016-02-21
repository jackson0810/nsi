from .base import *

DEBUG = False
ALLOWED_HOSTS = ['employees.navalsystemsinc.com']
URL_HOME = 'internal'
URL_HOME_NAME = 'internal'

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ['SECRET_KEY_EMPLOYEES']
