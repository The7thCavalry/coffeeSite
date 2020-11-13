from django import forms

from coffeeapp.models import Contact


class ContactForm(forms.ModelForm):
    # specify the name of model to use
    name = forms.CharField(widget=forms.FileInput(attrs={'class': 'input-group__input', 'type': 'text',
                                                         'placeholder': 'Сергеев Михаил'}))
    phone = forms.CharField(widget=forms.FileInput(attrs={'class': 'input-group__input', 'type': 'tel',
                                                          'placeholder': '8 (954) 342-11-23'}))
    email = forms.CharField(widget=forms.FileInput(attrs={'class': 'input-group__input', 'type': 'email',
                                                          'placeholder': 'adret1224@mail.ru'}))
    text = forms.CharField(widget=forms.Textarea(attrs={'class': 'input-group__input',
                                                        'placeholder': 'Текст вопроса'}))

    class Meta:
        model = Contact
        fields = "__all__"
