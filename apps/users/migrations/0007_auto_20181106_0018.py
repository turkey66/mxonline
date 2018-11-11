# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-11-06 00:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0006_auto_20181104_1511'),
    ]

    operations = [
        migrations.AlterField(
            model_name='emailverifyrecord',
            name='send_type',
            field=models.CharField(choices=[('register', '注册'), ('forget', '找回密码'), ('update_mail', '修改邮箱')], max_length=20, verbose_name='验证码类型'),
        ),
    ]