#mysqldump的几种常用方法：

（1）导出整个数据库(包括数据库中的数据）

    mysqldump -u username -p dbname > dbname.sql    
    
    实操:
    mysqldump -uroot -p join1 > /User/jankz/mysql-log/join1.sql;

（2）导出数据库结构（不含数据）

    mysqldump -u username -p -d dbname > dbname.sql  
    
    实操     
    mysqldump -uroot -p -d join1 > /User/jankz/mysql-log/join1.sql;


（3）导出数据库中的某张数据表（包含数据）

    mysqldump -u username -p dbname tablename > tablename.sql
    
    mysqldump -uroot -p join1 classtwo > /User/jankz/mysql-log/tab_classtwo.sql;
    

（4）导出数据库中的某张数据表的表结构（不含数据）

    mysqldump -u username -p -d dbname tablename > tablename.sql 
    实操:
    mysqldump -uroot -p -d join1 classone > /User/jankz/mysql-log/tab_classone.sql;
  
```
jankz:~ jankz$ mysqldump -uroot -p join1 > /Users/jankz/mysql-log/join1.sql
Enter password: 
jankz:~ jankz$ mysqldump -uroot -p -d join1 > /Users/jankz/mysql-log/join1-d.sql
Enter password: 
jankz:~ jankz$ mysqldump -uroot -p join1 classone > /Users/jankz/mysql-log/tab_classone.sql
Enter password: 
jankz:~ jankz$ mysqldump -uroot -p -d join1 classtwo > /Users/jankz/mysql-log/tab_classtwo.sql
Enter password: 
jankz:~ jankz$ 
```



2.mysqldump常用参数说明：

–all-databases , -A 导出全部数据库mysqldump -uroot -p –all-databases

–all-tablespaces , -Y导出全部表空间。mysqldump -uroot -p –all-databases –all-tablespaces–no-tablespaces , -y不导出任何表空间信息。mysqldump -uroot -p –all-databases –no-tablespaces

