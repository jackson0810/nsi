from .base import *

APPLICATION_URL = 'http://nsilocal:8888'
DEBUG = True
ALLOWED_HOSTS = ['*']

EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'y7d6zqxama2pqa&groktgw59i3exb9g8e4(!)v1^mw!tod5o5d'

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'nsi',
        'USER': 'nsi',
        'PASSWORD': 'nsi',
        'HOST': 'localhost',
        'PORT': '3306',
    }
}

LOG_PATH = '/var/log/nsi/'
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'formatters': {
        'standard': {
            'format': "[%(asctime)s] %(levelname)s [%(name)s:%(lineno)s] - %(message)s",
            'datefmt': "%d/%b/%Y %H:%M:%S"
        },
    },
    'filters': {
        'require_debug_false': {
            '()': 'django.utils.log.RequireDebugFalse'
        },
        'ignore_404_errors': {
            '()': 'django.utils.log.CallbackFilter',
            'callback': ignore_404_errors,
        }
    },
    'handlers': {
        'logfile': {
            'level': 'DEBUG',
            'class': 'logging.handlers.TimedRotatingFileHandler',
            'filename': LOG_PATH + "nsi-error.log",
            'when': 'midnight',
            'backupCount': 7,
            'formatter': 'standard',
        },
        'mail_admins': {
            'level': 'ERROR',
            'filters': ['require_debug_false', 'ignore_404_errors'],
            'class': 'django.utils.log.AdminEmailHandler'
        },
    },
    'loggers': {
        'django.request': {
            'handlers': ['mail_admins', 'logfile'],
            'level': 'DEBUG',
            'propagate': True,
        },
    }
}

