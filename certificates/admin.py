from django.contrib import admin
from certificates.models import Certificates


# Register your models here.

class CertificatesAdmin(admin.ModelAdmin):
    list_display = ['id', 'title']
    list_editable = ['title']
    search_fields = ['title']


admin.site.register(Certificates, CertificatesAdmin)
