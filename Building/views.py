# coding=utf-8
from django.shortcuts import render
from Building.models import Object, ObjectGallery, ObjectEntrance


# Create your views here.

def builtAction(request):
    data = Object.objects.raw("SELECT * FROM buildings WHERE built=1")
    template = 'views/objects/built/builtObjects.html'
    params = {'buildings': data}
    return render(request, template, params)


def objectOnConstruction(request):
    data = Object.objects.filter(built=0)
    template = ''
    params = {'buildings': data}
    return render(request, template, params)


def oneObjectAction(request, id):
    data = Object.objects.get(id=id)
    currentCompany = data.company
    allBuildings = Object.objects.filter(company=currentCompany)
    template = 'views/objects/entrance/one_object.html'
    params = {
        'buildings': allBuildings,
        'building': data
    }
    return render(request, template, params)


def contactsAction(request):
    template = 'views/Contacts/contacts.html'
    params = {}
    return render(request, template, params)


def constructionsAction(request):
    template = 'views/services/construction.html'
    params = {}
    return render(request, template, params)
