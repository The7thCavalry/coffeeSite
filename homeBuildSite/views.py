import re

from django.contrib import messages
from django.core.paginator import Paginator
from django.shortcuts import render, redirect
from django import http

# Create your views here.
from django.views.generic.base import View

from homeBuildSite.form import ContactForm
from homeBuildSite.models import ListArticle, ServiceArticle, Picture, Contact


def error(request, exception):
    return render(request, 'coffee/../templates/404.html', status=404)


class Article(View):
    def post(self, request):
        contact_form(request)
        return redirect("homeBuildSite:index")

    def get(self, request, *args, **kwargs):
        form = ContactForm()
        context = {"form": form, "contact": organization_data_arr(), "ceo": ceo()}
        return render(request, "coffee/article.html", context)


# def article(request):
#     if request.method == "POST":
#         contact_form(request)
#         return redirect("homeBuildSite:index")
#     else:
#         return render(request, "coffee/article.html")


class Contacts(View):
    def post(self, request):
        contact_form(request)
        return redirect("homeBuildSite:index")

    def get(self, request, *args, **kwargs):
        form = ContactForm()
        context = {"form": form, "contact": organization_data_arr(), "ceo": ceo()}
        return render(request, "coffee/contacts.html", context)


# def contacts(request):
#     if request.method == "POST":
#         contact_form(request)
#         return redirect("homeBuildSite:index")
#     else:
#         form = ContactForm()
#         context = {"form": form}
#         return render(request, "coffee/contacts.html", context)


class Index(View):
    def post(self, request):
        contact_form(request)
        return redirect("homeBuildSite:index")

    def get(self, request, *args, **kwargs):
        form = ContactForm()

        data = Picture.objects.all()
        context = {"data": data, "form": form, "contact": organization_data_arr(), "ceo": ceo()}
        return render(request, "coffee/index.html", context)


# def index(request):
#     if request.method == "POST":
#         contact_form(request)
#         return redirect("homeBuildSite:index")
#     else:
#         form = ContactForm()
#
#         data = Picture.objects.all()
#         context = {"data": data, "form": form}
#         return render(request, "coffee/index.html", context)


class List(View):
    def post(self, request):
        contact_form(request)
        return redirect("homeBuildSite:index")

    def get(self, request, *args, **kwargs):
        form = ContactForm()

        data = ListArticle.objects.all()

        page_number = request.GET.get('page', 1)
        current_page = Paginator(data, 3)
        context = {"data": current_page.page(page_number), "form": form, "contact": organization_data_arr(),
                   "ceo": ceo()}
        return render(request, "coffee/list.html", context)


# def list(request):
#     if request.method == "POST":
#         contact_form(request)
#         return redirect("homeBuildSite:index")
#     else:
#         form = ContactForm()
#
#         data = ListArticle.objects.all()
#
#         page_number = request.GET.get('page', 1)
#         current_page = Paginator(data, 3)
#         context = {"data": current_page.page(page_number), "form": form}
#         return render(request, "coffee/list.html", context)


class Service(View):
    def post(self, request):
        contact_form(request)
        return redirect("homeBuildSite:index")

    def get(self, request, *args, **kwargs):
        form = ContactForm()

        data = ServiceArticle.objects.all()
        context = {"data": data, "form": form, "contact": organization_data_arr(), "ceo": ceo()}
        return render(request, "coffee/service.html", context)


# def service(request):
#     if request.method == "POST":
#         contact_form(request)
#         return redirect("homeBuildSite:index")
#     else:
#         form = ContactForm()
#
#         data = ServiceArticle.objects.all()
#         context = {"data": data, "form": form}
#         return render(request, "coffee/service.html", context)


# class ContactFormMixin:
#     def contact_form(self, request):
#         contact = Contact()
#         contact.name = request.POST.get('name')
#         contact.phone = request.POST.get('phone')
#         contact.text = request.POST.get('text')
#         contact.email = request.POST.get('email')
#         contact.save()
#         messages.success(request, 'Form submission successful')

def contact_form(request):
    contact = Contact()
    contact.name = request.POST.get('name')
    contact.phone = request.POST.get('phone')
    contact.text = request.POST.get('text')
    contact.email = request.POST.get('email')
    contact.save()
    messages.success(request, 'Form submission successful')


def organization_data_arr():
    email = "dorstroiservis.dss@yandex.ru"
    phone = "+7(8112) 67-30-97"

    result_arr = list()
    result_arr.append(email)
    result_arr.append(phone)

    return result_arr


def ceo():
    result_map = dict()

    result_map["og_type"] = "website"
    result_map["og_url"] = "https://example.com/page.html"
    result_map["og_title"] = "Content Title"
    result_map["og_image"] = "https://example.com/image.jpg"
    result_map["og_description"] = "Description Here"
    result_map["og_site_name"] = "Site Name"
    result_map["og_locale"] = "en_US"
    result_map["og_image_width"] = "1200"
    result_map["og_image_height"] = "630"

    result_map["twitter_card"] = "summary"
    result_map["twitter_site"] = "@site_account"
    result_map["twitter_creator"] = "@individual_account"
    result_map["twitter_url"] = "https://example.com/page.html"
    result_map["twitter_title"] = "Content Title"
    result_map["twitter_description"] = "Content description less than 200 characters"
    result_map["twitter_image"] = "https://example.com/image.jpg"

    return result_map
