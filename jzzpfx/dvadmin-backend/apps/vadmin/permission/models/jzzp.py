from django.db.models import IntegerField, BooleanField, CharField, TextField

from ...op_drf.models import CoreModel


class Jzzp(CoreModel):
    zpzw = CharField(null=False, max_length=64, verbose_name="招聘职位")
    gsmc = CharField(max_length=64, verbose_name="公司名称")
    xz = CharField(max_length=32, verbose_name="薪资")
    city = CharField(max_length=32, verbose_name="城市")
    type = CharField(max_length=32, verbose_name="类别")
    xl = CharField(max_length=32, verbose_name="学历")


    class Meta:
        verbose_name = '兼职招聘管理'
        verbose_name_plural = verbose_name

    def __str__(self):
        return f"{self.zpzw}"
