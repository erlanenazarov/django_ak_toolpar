from django.contrib import admin

from Building.models import Object, ObjectGallery, ObjectCompany

# Register your models here.

admin.site.register(Object)
admin.site.register(ObjectCompany)
admin.site.register(ObjectGallery)