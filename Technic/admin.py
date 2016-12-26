# coding=utf-8
from django.contrib import admin

from Technic.models import Technic, TechnicCategory


# Register your models here.

class TechnicAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'subCategory', 'category', 'price']
    list_editable = ['title', 'subCategory', 'price']
    list_filter = ['category']
    search_fields = ['category', 'subCategory']


class TechnicCategoryAdmin(admin.ModelAdmin):
    list_display = ['id', 'title']
    list_editable = ['title']


admin.site.register(Technic, TechnicAdmin)
admin.site.register(TechnicCategory, TechnicCategoryAdmin)
