#!/usr/bin/env python
# -*- encoding:utf-8 -*-
__author__ = 'kairong'

import ConfigParser
import MySQLdb

cf  = ConfigParser.ConfigParser()
cf.read("./local_config")

def get_args(main, name):
    return cf.get(main, name)

db_host = get_args("DB", "db_host")
db_user = get_args("DB", "username")
db_default = get_args("DB", "db")
