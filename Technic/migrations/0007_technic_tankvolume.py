# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-10-03 13:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Technic', '0006_auto_20161003_1306'),
    ]

    operations = [
        migrations.AddField(
            model_name='technic',
            name='tankVolume',
            field=models.CharField(blank=True, max_length=255, null=True, verbose_name='\u041e\u0431\u044a\u0451\u043c \u0446\u0438\u0441\u0442\u0435\u0440\u043d\u044b'),
        ),
    ]
