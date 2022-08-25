import sys
from django.db import models

class Director(models.Model):
    name = models.TextField()
    debut = models.DateTimeField()
    country = models.TextField()

class Genre(models.Model):
    title = models.TextField()


# genre = Genre()
# genre.title = '트로트'
# genre.save()