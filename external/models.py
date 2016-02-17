from django.conf import settings
from django.db import models


from security.models import CustomUser


# Create your models here.
class NewsItem(models.Model):
    featured = models.BooleanField(default=False, verbose_name='is this featured')
    title = models.TextField(verbose_name='news detail')
    dt_created = models.DateTimeField(auto_now_add=True)
    created_by = models.ForeignKey(settings.AUTH_USER_MODEL, related_name='created_by')
    dt_updated = models.DateTimeField(auto_now=True)
    updated_by = models.ForeignKey(settings.AUTH_USER_MODEL, related_name='updated_by')

    def __str__(self):
        return self.title
