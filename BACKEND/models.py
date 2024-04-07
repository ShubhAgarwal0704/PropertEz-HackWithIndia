from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    pass

# this is model which have these fields common in used base model 
class BaseModel(models.Model):
    created_time=models.DateTimeField(auto_now_add=True)
    deleted_time = models.DateTimeField(null=True)
    deleted_status=models.BooleanField(default=False)
    class Meta:
        abstract = True

# this is a model used for dynamic dropdown or the dynamic checkpoints
class Dropdown(BaseModel):
    d_name = models.CharField(max_length=15)
    relation = models.ForeignKey("Dropdown", on_delete=models.SET_NULL, null=True)
    order_by=models.PositiveIntegerField(default=0)


# this model is used for saving the records of pg's
class PgDetail(BaseModel):
    cover_image = models.TextField()
    pg_name = models.CharField(max_length=100)
    owner_name = models.CharField(max_length=100)
    owner_contact = models.PositiveBigIntegerField()
    dist_f_college = models.PositiveSmallIntegerField()
    address = models.CharField(max_length=100)
    pin_code = models.PositiveIntegerField()

# this model is used for taking the record of room related to particular pg
class RoomAvialable(BaseModel):
    room_images = models.JSONField()
    seater = models.PositiveSmallIntegerField()
    price_p_month = models.FloatField()
    no_of_avlroom =models.PositiveSmallIntegerField()
    facilities_avl = models.JSONField()
    description = models.TextField(max_length=200)
    pg = models.ForeignKey(PgDetail,on_delete=models.SET_NULL,null=True,related_name="rel_pg")

