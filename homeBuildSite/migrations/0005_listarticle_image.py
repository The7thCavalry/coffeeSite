# Generated by Django 3.1.3 on 2020-12-07 16:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('homeBuildSite', '0004_auto_20201113_1025'),
    ]

    operations = [
        migrations.AddField(
            model_name='listarticle',
            name='image',
            field=models.ImageField(blank=True, upload_to='listArticles'),
        ),
    ]