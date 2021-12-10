from django.db import models

# Create your models here.
class Audio_store(models.Model):
    record = models.FileField(upload_to='songs/')
    class Meta:
        db_table = 'Audio_store'

class displaydata(models.Model):
    Cname = models.CharField(max_length=100)
    Sname = models.CharField(max_length=100)

class showchap(models.Model):
    name = models.CharField(max_length=100)
    ID = models.CharField(max_length=100, primary_key=True)
    class Meta:
        db_table = "chapter"

class showlesson(models.Model):
    name = models.CharField(max_length=100)
    ID_chapter = models.CharField(max_length=100)
    ID = models.IntegerField(primary_key=True)
    class Meta:
        db_table = "lesson"
