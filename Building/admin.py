from django.contrib import admin

from Building.models import *

# Register your models here.


class MyModelAdmin(admin.ModelAdmin):
    list_display = [
        'id',
        'title',
        'location',
        'company',
        'livingComplex'
    ]
    list_filter = ['company', 'livingComplex']


class FlatsAdmin(admin.ModelAdmin):
    list_display = ['id', 'title', 'render', 'description']
    list_editable = ['title']


admin.site.register(Object, MyModelAdmin)
admin.site.register(ObjectCompany)
admin.site.register(ObjectGallery)
admin.site.register(ObjectFlats, FlatsAdmin)
admin.site.register(ObjectEntrance)
