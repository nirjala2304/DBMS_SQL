//*create table=>emp( id,name,mobileno,address,salary)=>insert 5 records & use wildcard operator(*,%,_),perform all commands(create,insert,delete,update,select)*//

mysql> create table Empdata(Emp_id varchar(10) not null primary key,Emp_name varchar(20) not null,Mobile_no double not null,Emp_address varchar(60) not null,Emp_salary double not null);
Query OK, 0 rows affected (0.04 sec)


mysql> insert into Empdata (Emp_id,Emp_name,Mobile_no,Emp_address,Emp_salary) values('E1','SAI',6364664465,'solapur',100000),('E2','RAM',6548999986,'pune',600000),('E3','RANI',9876544333,'mumbai',560000),('E4','REKHA',7654868689,'solapur',100000),('E5','RAJA',654674
3567,'pune',560000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Empdata;
+--------+----------+------------+-------------+------------+
| Emp_id | Emp_name | Mobile_no  | Emp_address | Emp_salary |
+--------+----------+------------+-------------+------------+
| E1     | SAI      | 6364664465 | solapur     |     100000 |
| E2     | RAM      | 6548999986 | pune        |     600000 |
| E3     | RANI     | 9876544333 | mumbai      |     560000 |
| E4     | REKHA    | 7654868689 | solapur     |     100000 |
| E5     | RAJA     | 6546743567 | pune        |     560000 |
+--------+----------+------------+-------------+------------+
5 rows in set (0.00 sec)

mysql> delete from Empdata where Emp_id='E3';
Query OK, 1 row affected (0.00 sec)

mysql> select * from Empdata;
+--------+----------+------------+-------------+------------+
| Emp_id | Emp_name | Mobile_no  | Emp_address | Emp_salary |
+--------+----------+------------+-------------+------------+
| E1     | SAI      | 6364664465 | solapur     |     100000 |
| E2     | RAM      | 6548999986 | pune        |     600000 |
| E4     | REKHA    | 7654868689 | solapur     |     100000 |
| E5     | RAJA     | 6546743567 | pune        |     560000 |
+--------+----------+------------+-------------+------------+
4 rows in set (0.00 sec)

mysql> delete from Empdata where Emp_salary>600000;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from Empdata;
+--------+----------+------------+-------------+------------+
| Emp_id | Emp_name | Mobile_no  | Emp_address | Emp_salary |
+--------+----------+------------+-------------+------------+
| E1     | SAI      | 6364664465 | solapur     |     100000 |
| E2     | RAM      | 6548999986 | pune        |     600000 |
| E4     | REKHA    | 7654868689 | solapur     |     100000 |
| E5     | RAJA     | 6546743567 | pune        |     560000 |
+--------+----------+------------+-------------+------------+
4 rows in set (0.00 sec)

mysql> delete from Empdata where Emp_salary<600000;
Query OK, 3 rows affected (0.00 sec)

mysql> select * from Empdata;
+--------+----------+------------+-------------+------------+
| Emp_id | Emp_name | Mobile_no  | Emp_address | Emp_salary |
+--------+----------+------------+-------------+------------+
| E2     | RAM      | 6548999986 | pune        |     600000 |
+--------+----------+------------+-------------+------------+
1 row in set (0.00 sec)

mysql> update Empdata set Mobile_no=6543686435 where Emp_id='E2';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from Empdata;
+--------+----------+------------+-------------+------------+
| Emp_id | Emp_name | Mobile_no  | Emp_address | Emp_salary |
+--------+----------+------------+-------------+------------+
| E2     | RAM      | 6543686435 | pune        |     600000 |
+--------+----------+------------+-------------+------------+
1 row in set (0.00 sec)

mysql> update Empdata set Emp_salary=200000 where Emp_id='E4';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from Empdata;
+--------+----------+------------+-------------+------------+
| Emp_id | Emp_name | Mobile_no  | Emp_address | Emp_salary |
+--------+----------+------------+-------------+------------+
| E2     | RAM      | 6543686435 | pune        |     600000 |
+--------+----------+------------+-------------+------------+
1 row in set (0.00 sec)

