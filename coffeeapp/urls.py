from django.urls import path

from coffeeapp import views

app_name = "coffeeapp"

handler404 = 'coffeeapp.views.error'

urlpatterns = [
    path('', views.index, name="index"),
    path('article/', views.article, name="article"),
    path('service/', views.article, name="service"),
    path('contacts/', views.contacts, name="contacts"),
    path('list/', views.list, name="list"),
]
