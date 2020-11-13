from django.db import models


# Create your models here.
class Picture(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.TextField(blank=True)
    image = models.ImageField(upload_to="main", blank=True)


class ListArticle(models.Model):
    id = models.AutoField(primary_key=True)
    text = models.TextField(blank=True)


class ServiceArticle(models.Model):
    id = models.AutoField(primary_key=True)
    text = models.TextField(blank=True)


class Contact(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=20)
    email = models.CharField(max_length=100, blank=True)
    text = models.CharField(max_length=1000)
