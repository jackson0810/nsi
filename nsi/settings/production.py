from .base import *

DEBUG = False
ALLOWED_HOSTS = ['n-s-i.us']

SECRET_KEY = os.environ['SECRET_KEY_PROD']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': os.environ['DATABASE_NAME_PROD'],
        'USER': os.environ['DATABASE_USER_PROD'],
        'PASSWORD': os.environ['DATABASE_PASSWORD_PROD'],
        'HOST': os.environ['DATABASE_SERVER_PROD'],
        'PORT': '3306',
    }
}

LOG_PATH = '/home/nsishell/n-s-i/logs/'
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
