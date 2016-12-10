# coding=utf-8
from django.shortcuts import render
from Building.models import Object, ObjectGallery, ObjectEntrance


# Create your views here.

def builtAction(request):
    data = Object.objects.filter(built=1)
    template = 'views/objects/built/builtObjects.html'
    params = {
        'buildings': data,
        'location': 'objects'
    }
    return render(request, template, params)


def constructionAction(request):
    data = Object.objects.filter(built=0)
    template = 'views/objects/inContruction/construction.html'
    params = {
        'buildings': data,
        'location': 'objects'
    }
    return render(request, template, params)


def oneObjectAction(request, id):
    data = Object.objects.get(id=id)
    currentCompany = data.company
    allBuildings = Object.objects.filter(company=currentCompany)
    template = 'views/objects/entrance/one_object.html'
    params = {
        'buildings': allBuildings,
        'building': data,
        'location': 'object'
    }
    return render(request, template, params)


def contactsAction(request):
    template = 'views/Contacts/contacts.html'
    params = {
        'location': 'contacts'
    }
    return render(request, template, params)


def constructionsAction(request):
    template = 'views/services/construction.html'
    params = {
        'location': 'services'
    }
    return render(request, template, params)


def projectingServiceAction(request):
    template = 'views/services/projecting.html'
    params = {
        'location': 'services'
    }
    return render(request, template, params)


def projecting_view(request):
    params = {
        'location': 'object'
    }
    return render(request, 'views/objects/plojecting/projecting.html', params)
