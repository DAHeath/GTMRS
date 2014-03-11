GTMRS
=====
Analyze, specify, design, implement, document and demonstrate information system applicationto	support	a new Georgia	Tech Medical Records System called GTMRS. You are required to use the Classical Methodology for Database Development. The system should be implemented using a relational DBMS that supports standard SQL queries. Class	administrators will provide you with information about how to access a college-managed MySQL server in order to implement your database and the application. The professors must approve any other alternative implementations.	

Setting up the Database
-----------------------

In order to test out the database, navigate in the terminal to the source folder. Execute the following command to enter the mysql shell:  
```shell
mysql -u root -p test
```
Run the following command to create the database tables:  
```shell
source create_tables.sql  
```
You can view the schema for every table in the database by executing the command: 
```shell
source show_tables.sql
```
