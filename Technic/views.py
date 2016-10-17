# coding=utf-8
from django.shortcuts import render
from Technic.models import Technic, TechnicCategory


# Create your views here.

def indexAction(request):
    data = Technic.objects.raw('SELECT * FROM technic LIMIT 4')
    template = 'views/index/index.html'
    params = {'location': 'home', 'technic': data}
    return render(request, template, params)


def technicRentAction(request):
    data = TechnicCategory.objects.all()
    technics = Technic.objects.all()
    template = 'views/services/rent/technic.html'
    params = {'location': 'services', 'categories': data, 'technic': technics}
    return render(request, template, params)