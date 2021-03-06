from django.shortcuts import render, redirect
from django.contrib import auth
from main_app.models import *
from django.contrib import messages
import json
from django.http import JsonResponse

# Create your views here.

def logout(request):
    auth.logout(request)
    messages.success(request,'Logout Successful!!')
    return redirect('/')

def index(request):
    return render(request,'index.html')

def login(request):
	if request.method=='POST':
		user_name=request.POST['username']
		password=request.POST['password']
		if len(user_name)==0:
			return render(request,'login.html',{'message':'Username is Empty!!!'})
		elif len(password)==0:
			return render(request,'login.html',{'message':'Password is Empty!!!'})
		else:
			user=auth.authenticate(username=user_name,password=password)
			if user is not None:
				auth.login(request,user)
				return redirect('/dashboard')
			else:
				return render(request,'login.html',{'message':'Username or Password is incorrect. Try again!'})

	else:
		return render(request,'login.html')

def dashboard(request):
	return render(request,'dashboard.html')

def ViewStudents(request):
    students=StudentDetails.objects.all().order_by('usn')
    context={'students':students}
    return render(request,'student_details.html',context)

def ViewStudentDetails(request,usn):
    student=StudentDetails.objects.get(usn=usn)
    context={'student':student}
    return render(request,'student_profile.html',context)

def DeleteStudent(request,usn):
	student=StudentDetails.objects.get(usn=usn)
	student.delete()
	messages.info(request,'Student Deleted Successfully')
	return redirect('ViewStudents')

def SearchStudent(request):
    if request.method=='POST':
        search_str=json.loads(request.body).get('searchText')

        student=StudentDetails.objects.filter(first_name__istartswith=search_str) | StudentDetails.objects.filter(
        last_name__istartswith=search_str) | StudentDetails.objects.filter(
        usn__istartswith=search_str)  | StudentDetails.objects.filter(branch__istartswith=search_str)

        data = student.values()

        return JsonResponse(list(data),safe=False)

def studentRegister(request):
    if request.method=='GET':
	       return render(request,'student_register.html')
    else:
        if len(request.FILES)==0:
            messages.info(request,'Please upload an image!')
            return render(request,'student_register.html')
        first_name=request.POST['fname']
        last_name=request.POST['lname']
        email=request.POST['email']
        phone=request.POST['phone']
        sex=request.POST['sex']
        dob=request.POST['dob']
        usn=request.POST['usn']
        branch=request.POST['branch']
        section=request.POST['section']
        photo=request.FILES['photo']

        if StudentDetails.objects.filter(usn=usn).exists():
            messages.error(request,'USN Already exists!')
            return redirect('studentRegister')
        else:
            student=StudentDetails.objects.create(usn=usn,first_name=first_name,last_name=last_name,emailid=email,phone=phone,branch=branch,section=section,gender=sex,dob=dob,photo=photo)
            student.save()
        messages.success(request,'New Student Successfully created!')
        return redirect('ViewStudents')

def notifications(request):
    violators=Violators.objects.all().order_by('-timestamp')
    context={'violators':violators}
    return render(request,'notification.html',context)

def ViolatorDetails(request,usn):
    student=StudentDetails.objects.get(usn=usn)
    context={'student':student}
    return render(request,'violator_details.html',context)


def ViewAllCameras(request):
	return render(request,'view_all_cameras.html')

def ViewSpecificStream(request):
	return render(request,'view_specific_stream.html')
