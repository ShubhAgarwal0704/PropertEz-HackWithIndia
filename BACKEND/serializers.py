from rest_framework import serializers
from .models import User,PgDetail,RoomAvialable


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id','first_name','last_name','username', 'password']
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        user = User.objects.create_user(**validated_data)
        return user
    


class PgDetailSerializer(serializers.ModelSerializer):
    cover_image = serializers.ImageField()
    class Meta:
        model = PgDetail
        # fields = '__all__'
        exclude=['deleted_status','deleted_time','created_time']


class ListPgDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = PgDetail
        # fields = '__all__'
        exclude=['deleted_status','deleted_time','created_time']


class RoomAvailableSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomAvialable
        # fields = '__all__'
        exclude=['deleted_status','deleted_time','created_time']

