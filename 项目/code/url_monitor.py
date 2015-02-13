#!/usr/bin/env python
# -*- encoding:utf-8 -*-
__author__ = 'kairong'

import ConfigParser
import MySQLdb
import requests

cf  = ConfigParser.ConfigParser()
cf.read("./local_config")

def get_args(main, name):
    return cf.get(main, name)

#初始化各种参数
db_hostname = str(get_args("DB", "db_host"))
db_user = get_args("DB", "username")
db_pass = get_args("DB", "passwd")
db_default = get_args("DB", "db")
#建立mysql游标
conn = MySQLdb.connect(host='localhost', user=db_user, passwd='test', db='url_mon')
cur = conn.cursor()

cur.execute("show tables;")
print cur.fetchall()
