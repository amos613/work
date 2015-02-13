#!/usr/bin/env python
# -*- encoding:utf-8 -*-
__author__ = 'kairong'
import ConfigParser
cf  = ConfigParser.ConfigParser()
cf.read("./local_config")
print cf.get('DB','db')