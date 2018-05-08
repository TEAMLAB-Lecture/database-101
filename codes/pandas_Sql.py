from pandas import DataFrame
import pymysql
import pandas as pd
import pandas.io.sql as psql

conn = pymysql.connect(host='localhost',
            port=3306, user='root',
            passwd='ime2018', db='northwind')


df = pd.read_sql_query(
    "SELECT EmployeeID, LastName, FirstName, Title FROM northwind.employees;", conn)
print(df)
