mysql> CREATE TABLE BankAccount(account_id varchar(10) not null primary key,account_holder_name varchar(20) not null,account_balance
double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO BankAccount(account_id,account_holder_name,account_balance)VALUES(101,'NIRJALA MADGAL',25000.00),(102,'NEHA KAMTAM',31000.00),(103,'RUPALI GUNDLA',28000.00);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | NIRJALA MADGAL      |           25000 |
| 102        | NEHA KAMTAM         |           31000 |
| 103        | RUPALI GUNDLA       |           28000 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| NIRJALA MADGAL      |           25000 |
| NEHA KAMTAM         |           31000 |
| RUPALI GUNDLA       |           28000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount where account_balance> 30000.00;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| NEHA KAMTAM         |           31000 |
+---------------------+-----------------+
1 row in set (0.00 sec)

mysql> update BankAccount set account_balance=35000.00 where account_id=101;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select *from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | NIRJALA MADGAL      |           35000 |
| 102        | NEHA KAMTAM         |           31000 |
| 103        | RUPALI GUNDLA       |           28000 |
+------------+---------------------+-----------------+
3 rows in set (0.00 sec)