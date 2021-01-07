from django.db import models

from django.utils.translation import gettext_lazy as _

from django.db import models
from imagekit.models import ImageSpecField
from pilkit.processors import Thumbnail


# Create your models here.
# class Picture(models.Model):
#     id = models.AutoField(primary_key=True)
#     name = models.TextField(blank=True)
#     image = models.ImageField(upload_to="main", blank=True)
#
#
# class ListArticle(models.Model):
#     id = models.AutoField(primary_key=True)
#     text = models.TextField(blank=True)
#     image = models.ImageField(upload_to="listArticles", blank=True)
#
#
# class ServiceArticle(models.Model):
#     id = models.AutoField(primary_key=True)
#     text = models.TextField(blank=True)
#
#
# class Contact(models.Model):
#     id = models.AutoField(primary_key=True)
#     name = models.CharField(max_length=100)
#     phone = models.CharField(max_length=20)
#     email = models.CharField(max_length=100, blank=True)
#     text = models.CharField(max_length=1000)

# Create your models here.
class Picture(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.TextField(blank=True, verbose_name=_('имя'))
    image = models.ImageField(upload_to="main", blank=True, verbose_name=_('картинка'))
    image_thumbnail = ImageSpecField(source='image',
                                     processors=[Thumbnail(200, 100)],
                                     format='JPEG',
                                     options={'quality': 90})

    class Meta:
        verbose_name = _('картинка')
        verbose_name_plural = _('картинки')


class ListArticle(models.Model):
    id = models.AutoField(primary_key=True)
    text = models.TextField(blank=True, verbose_name=_('текст'))
    image = models.ImageField(upload_to="listArticles", blank=True, verbose_name=_('картинка'))
    image_thumbnail = ImageSpecField(source='image',
                                     processors=[Thumbnail(500, 300)],
                                     format='JPEG',
                                     options={'quality': 500})

    class Meta:
        verbose_name = _('новость')
        verbose_name_plural = _('новости')


class ServiceArticle(models.Model):
    id = models.AutoField(primary_key=True)
    text = models.TextField(blank=True, verbose_name=_('текст'))

    class Meta:
        verbose_name = _('услуга')
        verbose_name_plural = _('услуги')


class Contact(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100, verbose_name=_('имя'))
    phone = models.CharField(max_length=20, verbose_name=_('телефон'))
    email = models.CharField(max_length=100, blank=True, verbose_name=_('email'))
    text = models.CharField(max_length=1000, verbose_name=_('текст'))

    class Meta:
        verbose_name = _('контакт')
        verbose_name_plural = _('контакты')
