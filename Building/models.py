# coding=utf-8
from __future__ import unicode_literals

from django import forms
from django.db import models


# Create your models here.


class Object(models.Model):
    class Meta:
        db_table = "buildings"
        verbose_name = 'Объект'
        verbose_name_plural = 'Объекты'

    title = models.CharField(max_length=255, null=True, blank=True)
    location = models.CharField(max_length=255, null=True, blank=True)
    description = models.TextField(blank=True, null=True)
    genPlan = models.ImageField(upload_to="gen-plan", null=True, blank=True)
    gallery = models.ForeignKey('ObjectGallery', null=True)
    flats = models.ManyToManyField('ObjectFlats', null=True)
    # entrance = models.ManyToManyField('ObjectEntrance', null=True)
    entrance1 = models.ImageField(upload_to='entrance', null=True)
    entrance2 = models.ImageField(upload_to='entrance', null=True)
    built = models.BooleanField(default=True)
    MY_CHOICES = (
        ('A', 'ЖК "Улан-2"'),
        ('B', 'ЖК "Солнечный"'),
    )
    company = models.ForeignKey('ObjectCompany', null=True, blank=True)
    livingComplex = models.CharField(max_length=255, null=True, choices=MY_CHOICES)

    def __unicode__(self):
        return self.title


class ObjectGallery(models.Model):
    class Meta:
        db_table = "ObjectsGallery"
        verbose_name = 'Галлерея'
        verbose_name_plural = 'Галлереи'

    title = models.CharField(max_length=255)
    image = models.ImageField(upload_to="gallery")

    def __unicode__(self):
        return str(self.id) + ': ' + self.title


class ObjectEntrance(models.Model):
    class Meta:
        db_table = 'ObjectEntrance'
        verbose_name = 'Подъезд'
        verbose_name_plural = 'Подъезды'

    title = models.CharField(max_length=255)
    image = models.ImageField(upload_to='entrance')

    def __unicode__(self):
        return str(self.id) + ': ' + self.title


class ObjectFlats(models.Model):
    class Meta:
        db_table = 'ObjectFlats'
        verbose_name = 'Планировка квартир'
        verbose_name_plural = 'Планировки квартир'

    title = models.CharField(max_length=255, null=True, blank=True)
    render = models.ImageField(upload_to='flats/', null=True)
    description = models.TextField(null=True, blank=True)

    def __unicode__(self):
        return self.title


class ObjectCompany(models.Model):
    class Meta:
        db_table = 'Companies'
        verbose_name = 'Компания'
        verbose_name_plural = 'Компании'

    title = models.CharField(max_length=255)

    def __unicode__(self):
        return self.title
