from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone

# Create your models here.
class StudentDetails(models.Model):
    usn=models.CharField(primary_key=True,max_length=10)
    name=models.CharField(max_length=50)
    phone=models.CharField(max_length=10)
    emailid=models.CharField(max_length=50)
    branch=models.CharField(max_length=10)
    section=models.CharField(max_length=10)
    photo=models.FileField(upload_to='images/', null=True, verbose_name="")

    def __str__(self):
        return self.name + ": " + str(self.imagefile)

class Violators(models.Model):
    usn=models.ForeignKey(StudentDetails,on_delete=models.CASCADE)
    timestamp=models.DateTimeField(default=timezone.now)
    status=models.CharField(max_length=10,default='unknown')
    pic=models.FileField(upload_to='violators/', null=True, verbose_name="")

    def __str__(self):
        return self.name + ": " + str(self.imagefile)
