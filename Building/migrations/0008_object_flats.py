# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-10-20 09:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Building', '0007_auto_20161020_0929'),
    ]

    operations = [
        migrations.AddField(
            model_name='object',
            name='flats',
            field=models.ManyToManyField(null=True, to='Building.ObjectFlats'),
        ),
    ]
