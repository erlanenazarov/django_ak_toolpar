"""AkToolpar URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
# coding=utf-8
from django.conf import settings
from django.conf.urls import url, include
from django.conf.urls.static import static

from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

from Technic import views as TechnicViews
from certificates import views as certificatesView
from Building import views as BuildingViews


urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', TechnicViews.indexAction, name='index'),
    url(r'^services/rent/$', TechnicViews.technicRentAction, name='rent'),
    url(r'^about/$', certificatesView.aboutAction, name='about'),
    url(r'^objects/built$', BuildingViews.builtAction, name='builtObjects'),
    url(r'^objects/projecting$', BuildingViews.projecting_view, name='projecting_objects'),
    url(r'^objects/in-construction$', BuildingViews.constructionAction, name='constructionObjects'),
    url(r'^object/(?P<id>[0-9]+)', BuildingViews.oneObjectAction, name='buildingEntrance'),
    url(r'^objects/under-construction', BuildingViews.builtAction, name='underConstructions'),
    url(r'^contacts/$', BuildingViews.contactsAction, name='contacts'),
    url(r'^services/construction/$', BuildingViews.constructionsAction, name='construction'),
    url(r'^services/design/$', BuildingViews.projectingServiceAction, name='design'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += staticfiles_urlpatterns()

