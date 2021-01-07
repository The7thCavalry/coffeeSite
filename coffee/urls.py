"""coffee URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.locale import ru
from django.conf.urls import url
from django.conf.urls.i18n import i18n_patterns
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

import homeBuildSite
from coffee import settings
from homeBuildSite import views


from django.utils.translation import gettext_lazy as _

# urlpatterns = [
#     path('admin/', admin.site.urls),
#
#
#     url(r'^', include('homeBuildSite.urls')),
#     path(r'.*', homeBuildSite.views.error, name="error"),
# ] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

urlpatterns = i18n_patterns(
    # ...
    path('admin/', admin.site.urls),
    # ...
    url(r'^', include('homeBuildSite.urls')),
#     path(r'.*', homeBuildSite.views.error, name="error"),

    # If no prefix is given, use the default language
    prefix_default_language=False
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

admin.site.index_title = _('My Index Title')
admin.site.site_header = _('My Site Administration')
admin.site.site_title = _('My Site Management')
