from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from django.contrib.auth import authenticate, login, logout
from .models import User,PgDetail,RoomAvialable
from .serializers import UserSerializer,PgDetailSerializer,RoomAvailableSerializer,ListPgDetailSerializer
from rest_framework import generics, viewsets
import cloudinary.uploader


class RegisterView(APIView):
    def post(self, request):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({'success': 'User created successfully'}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class LoginView(APIView):
    def post(self, request):
        username = request.data.get('username')
        password = request.data.get('password')
        if not (username and password):
            return Response({'error': 'Please provide username and password'}, status=status.HTTP_400_BAD_REQUEST)

        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return Response({'success': 'Login successful'}, status=status.HTTP_200_OK)
        else:
            return Response({'error': 'Invalid credentials'}, status=status.HTTP_401_UNAUTHORIZED)

class LogoutView(APIView):
    def get(self, request):
        logout(request)
        return Response({'success': 'Logged out successfully'}, status=status.HTTP_200_OK)



class PgDetailCreateAPIView(generics.CreateAPIView):
    # queryset = PgDetail.objects.all()
    serializer_class = PgDetailSerializer

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        if serializer.is_valid():
            cover_image = serializer.validated_data.get('cover_image')
            # Upload image to Cloudinary
            uploaded_image = cloudinary.uploader.upload(cover_image)
            # Get the URL of the uploaded image
            cover_image_url = uploaded_image['secure_url']
            # Add the URL to the validated data
            serializer.validated_data['cover_image'] = cover_image_url
            # Save the data to the database
            self.perform_create(serializer)
            # Get the newly created instance
            instance = serializer.instance
            # Serialize the instance with full image URL
            serialized_data = self.get_serializer(instance).data
            # Add the full URL to the response data
            serialized_data['cover_image'] = cover_image_url
            # Return success response with the serialized data
            return Response({'success': 'Data saved successfully'}, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class PgDetailListAPIView(generics.ListAPIView):
    serializer_class = ListPgDetailSerializer

    def get_queryset(self):
        return PgDetail.objects.filter(deleted_status=False)

class PgDetailRetrieveUpdateDestroyAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = PgDetail.objects.all()
    serializer_class = PgDetailSerializer

class RoomAvailableListCreateAPIView(generics.ListCreateAPIView):
    queryset = RoomAvialable.objects.all()
    serializer_class = RoomAvailableSerializer

class RoomAvailableRetrieveUpdateDestroyAPIView(generics.RetrieveUpdateDestroyAPIView):
    queryset = RoomAvialable.objects.all()
    serializer_class = RoomAvailableSerializer

# Viewsets for convenience
# class PgDetailViewset(viewsets.ModelViewSet):
#     queryset = PgDetail.objects.all()
#     serializer_class = PgDetailSerializer

# class RoomAvailableViewset(viewsets.ModelViewSet):
#     queryset = RoomAvialable.objects.all()
#     serializer_class = RoomAvailableSerializer
