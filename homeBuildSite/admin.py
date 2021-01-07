from django.contrib import admin

# Register your models here.

from .models import Picture, ListArticle, ServiceArticle, Contact

admin.site.register(Picture)
admin.site.register(ListArticle)
admin.site.register(ServiceArticle)


class ContactAdmin(admin.ModelAdmin):
    list_display = ('name', 'phone', 'email', 'text')


admin.site.register(Contact, ContactAdmin)
