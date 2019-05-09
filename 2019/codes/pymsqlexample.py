#!/usr/bin/env python
from __future__ import print_function

import pymysql

conn = pymysql.connect(host='localhost',
            port=3306, user='root',
            passwd='ime2018', db='northwind')

cur = conn.cursor()

cur.execute("SELECT EmployeeID, LastName, FirstName, Title FROM northwind.employees;")

print(cur.description)

for row in cur:
    print(row)

cur.close()
conn.close()
