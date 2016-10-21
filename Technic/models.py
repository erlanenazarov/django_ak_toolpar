# coding=utf-8

from __future__ import unicode_literals

from django.db import models
from Technic.helper import *

# Create your models here.

class Technic(models.Model):
    class Meta:
        db_table = 'technic'
        verbose_name = 'Техника'
        verbose_name_plural = 'Техника'

    preview = models.ImageField(upload_to=transform('technic'), verbose_name='Изображение')
    title = models.CharField(max_length=255, verbose_name='Модель')
    capacity = models.CharField(max_length=255, null=True, blank=True, verbose_name='Грузоподъемность')
    power = models.CharField(max_length=255, null=True, blank=True, verbose_name='Мощность')
    engineVolume = models.CharField(max_length=255, null=True, blank=True, verbose_name='Объём двигателя')
    maxSpeed = models.CharField(max_length=255, null=True, blank=True, verbose_name='Макс. Скорость')
    fullMass = models.CharField(max_length=255, null=True, blank=True, verbose_name='Полная масса')
    fuelBank = models.CharField(max_length=255, null=True, blank=True, verbose_name='Топливный бак')
    amplitude = models.CharField(max_length=255, null=True, blank=True, verbose_name='Амплитуда')
    tankVolume = models.CharField(max_length=255, null=True, blank=True, verbose_name='Объём цистерны')
    exploitation = models.CharField(max_length=255, null=True, blank=True, verbose_name='Эксплуатационная масса')
    ladleVolume = models.CharField(max_length=255, null=True, blank=True, verbose_name='Объём ковша')
    depthDigging = models.CharField(max_length=255, null=True, blank=True, verbose_name='Глубина копания')
    subCategory = models.CharField(max_length=255, null=True, verbose_name='Название')
    category = models.ForeignKey('TechnicCategory', default=1)

    def __unicode__(self):
        return str(self.id) + ' ' + self.title


class TechnicCategory(models.Model):
    class Meta:
        db_table = 'Category'
        verbose_name = 'Категория техники'
        verbose_name_plural = 'Категория техники'

    preview = models.ImageField(upload_to='technic/category')
    title = models.CharField(max_length=255)

    def __unicode__(self):
        return str(self.id) + ' ' + self.title
