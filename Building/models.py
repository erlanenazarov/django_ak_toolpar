# coding=utf-8
from __future__ import unicode_literals

from django.db import models


# Create your models here.

class Object(models.Model):
    class Meta:
        db_table = "buildings"
        verbose_name = 'Объекты'
        verbose_name_plural = 'Объекты'

    title = models.CharField(max_length=255)
    location = models.CharField(max_length=255)
    description = models.TextField()
    genPlan = models.ImageField(upload_to="")
    gallery = models.ForeignKey('ObjectGallery')
    entrance = models.ImageField(upload_to="objects/entrance")

    def __unicode__(self):
        return str(self.title)


class ObjectGallery(models.Model):
    class Meta:
        db_table = "ObjectsGallery"
        verbose_name = 'Галлерея'
        verbose_name_plural = 'Галлерея'

    title = models.CharField(max_length=255)
    image = models.ImageField(upload_to="gallery")

    def __unicode__(self):
        return str(self.id) + ': ' + self.title


class ObjectEntrance(models.Model):
    class Meta:
        db_table = 'ObjectEntrance'
        verbose_name = 'Подъезды'
        verbose_name_plural = 'Подъезды'

    title = models.CharField(max_length=255)
    image = models.ImageField(upload_to='entrance')

    def __unicode__(self):
        return str(self.id) + ': ' + self.title


class ObjectFlats(models.Model):
    class Meta:
        db_table = 'ObjectFlats'
        verbose_name = 'Планировка квартир'
        verbose_name_plural = 'Планировка квартир'

    title = models.CharField(max_length=255)
    