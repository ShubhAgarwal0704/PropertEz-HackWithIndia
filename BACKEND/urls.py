from django.urls import path
from .views import RegisterView,LoginView,LogoutView,PgDetailCreateAPIView,PgDetailListAPIView


urlpatterns = [

   path('register/', RegisterView.as_view(), name='register'),
   path('login/', LoginView.as_view(), name='login'),
   path('logout/', LogoutView.as_view(), name='logout'),
   path('register-pg/', PgDetailCreateAPIView.as_view(), name='register-pg'),
   path('list-pg/', PgDetailListAPIView.as_view(), name='list-pg'),
   path('/', LogoutView.as_view(), name=''),
   
]