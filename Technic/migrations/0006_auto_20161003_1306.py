# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-10-03 13:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Technic', '0005_auto_20161003_1305'),
    ]

    operations = [
        migrations.AlterField(
            model_name='technic',
            name='fullMass',
            field=models.CharField(blank=True, max_length=255, null=True, verbose_name='\u041f\u043e\u043b\u043d\u0430\u044f \u043c\u0430\u0441\u0441\u0430'),
        ),
    ]
