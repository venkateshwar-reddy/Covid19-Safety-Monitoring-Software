from django.urls import path
from . import views

from django.views.decorators.csrf import csrf_exempt

urlpatterns=[
path('',views.index,name='index'),
path('login',views.login,name='login'),
path('logout',views.logout,name='logout'),
path('dashboard',views.dashboard,name='dashboard'),
path('ViewStudents',views.ViewStudents,name='ViewStudents'),
path('studentRegister',views.studentRegister,name='studentRegister'),
path('ViewAllCameras',views.ViewAllCameras,name='ViewAllCameras'),
path('ViewSpecificStream',views.ViewSpecificStream,name='ViewSpecificStream'),
path('DeleteStudent/<usn>',views.DeleteStudent,name='DeleteStudent'),
path('ViewStudentDetails/<usn>',views.ViewStudentDetails,name='ViewStudentDetails'),
path('SearchStudent',csrf_exempt(views.SearchStudent),name='SearchStudent'),
path('notifications',views.notifications,name='notifications'),
path('ViolatorDetails/<usn>',views.ViolatorDetails,name='ViolatorDetails'),
]
