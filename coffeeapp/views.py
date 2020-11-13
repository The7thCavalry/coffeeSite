import re

from django.shortcuts import render, redirect
from django import http

# Create your views here.
from coffeeapp.form import ContactForm
from coffeeapp.models import ListArticle, ServiceArticle, Picture, Contact


def error(request, exception):
    return render(request, 'coffee/../templates/404.html', status=404)


def article(request):
    return render(request, "coffee/article.html")


def contacts(request):
    if request.method == "POST":
        # error = ""
        # phone_regex = "(\d{3}[-\.\s]??\d{3}[-\.\s]??\d{4}|\(\d{3}\)\s*\d{3}[-\.\s]??\d{4}|\d{3}[-\.\s]??\d{4})"
        # email_regex = '^[a-z0-9]+[\._]?[a-z0-9]+[@]\w+[.]\w{2,3}$'
        # if request.POST.get('name') == "":
        #     error = "Введите имя"
        # elif request.POST.get('phone') == "":
        #     error = "Введите телефон"
        # elif re.search(phone_regex, request.POST.get('phone')):
        #     error = "Введите корректный телефон"
        # elif request.POST.get('text') == "":
        #     error = "Введите текст"
        #
        # if error == "":
        #     contact = Contact()
        #     contact.name = request.POST.get('name')
        #     contact.phone = request.POST.get('phone')
        #     contact.text = request.POST.get('text')
        #
        #     if request.POST.get('email') != "" and re.search(email_regex, request.POST.get('email')):
        #         error = "Введите корректный email"
        #
        #         form = ContactForm()
        #         context = {"form": form, "error": error}
        #         return render(request, "coffee/contacts.html", context)
        #     else:
        #         contact.email = request.POST.get('email')
        #
        #     contact.save()
        #     return redirect("coffeeapp:index")
        # else:
        #     form = ContactForm()
        #     context = {"form": form, "error": error}
        #     return render(request, "coffee/contacts.html", context)
        contact = Contact()
        contact.name = request.POST.get('name')
        contact.phone = request.POST.get('phone')
        contact.text = request.POST.get('text')
        contact.email = request.POST.get('email')
        contact.save()
        return redirect("coffeeapp:index")
    else:
        form = ContactForm()
        context = {"form": form}
        return render(request, "coffee/contacts.html", context)


def index(request):
    data = Picture.objects.all()
    context = {"data" : data}
    return render(request, "coffee/index.html", context)


def list(request):
    data = ListArticle.objects.all()
    context = {"data": data}
    return render(request, "coffee/list.html", context)


def service(request):
    data = ServiceArticle.objects.all()
    context = {"data": data}
    return render(request, "coffee/service.html", context)
