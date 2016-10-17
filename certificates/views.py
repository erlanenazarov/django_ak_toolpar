from django.shortcuts import render
from certificates.models import Certificates


# Create your views here.

def aboutAction(request):
    data = Certificates.objects.all()
    template = 'views/about/about.html'
    params = {'location': 'about', 'data': data}
    return render(request, template, params)
