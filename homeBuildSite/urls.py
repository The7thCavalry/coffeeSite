from django.urls import path

from homeBuildSite import views
from homeBuildSite.views import Article, Index, Service, Contacts, List

app_name = "homeBuildSite"

handler404 = 'homeBuildSite.views.error'

urlpatterns = [
    path('', Index.as_view(), name="index"),
    path('article/', Article.as_view(), name="article"),
    path('service/', Service.as_view(), name="service"),
    path('contacts/', Contacts.as_view(), name="contacts"),
    path('list/', List.as_view(), name="list"),
]
