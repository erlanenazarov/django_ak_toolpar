# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-10-20 10:01
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Building', '0009_auto_20161020_0945'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='object',
            name='entrance',
        ),
        migrations.AddField(
            model_name='object',
            name='entrance',
            field=models.ManyToManyField(null=True, to='Building.ObjectEntrance'),
        ),
    ]
