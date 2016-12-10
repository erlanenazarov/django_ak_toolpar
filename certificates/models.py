# coding=utf-8
from __future__ import unicode_literals

from django.db import models


# Create your models here.

class Certificates(models.Model):
    class Meta:
        db_table = 'certificates'
        verbose_name = 'Сертификаты'
        verbose_name_plural = 'Сертификаты'

    title = models.CharField(max_length=255, null=True, blank=True, verbose_name='Наименование')
    image = models.ImageField(upload_to='certificates/')
    MY_CHOICES = (
        (1, 1),
        (2, 2)
    )
    type = models.IntegerField(choices=MY_CHOICES, null=True)
    company = models.ForeignKey('Building.ObjectCompany', null=True)

    def __unicode__(self):
        return str(self.id) + ': ' + self.title
