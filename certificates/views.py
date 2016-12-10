from django.http import JsonResponse
from django.shortcuts import render
from certificates.models import Certificates


# Create your views here. render(request, template, params)

def aboutAction(request):
    tulpar_certificates = Certificates.objects.filter(company_id=1)
    nurlan_certificates = Certificates.objects.filter(company_id=2)
    template = 'views/about/about.html'
    params = {'location': 'about', 'toolpar': tulpar_certificates, 'nurlan': nurlan_certificates}
    return render(request, template, params)
