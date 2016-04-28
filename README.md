# Mysql
#Mysql 基础到进阶
# 数据库
开启数据库操作日志
\T /Users/jankz/mysql-log/2.txt

## 查看数据库

```SHOW DATABASES; SHOW SCHEMAS
```
## 创建数据库

```CREATE DATABASE IF NOT EXISTS maizi2 DEFAULT CHARACTER SET = 'GBK';
```

## 使用 打开数据库

```USE DATABASE;  SELECT DATABASE();
```
## 删除

```DROP DATABASE IF EXISTS DB\_NAME;
```

## 修改默认字符集

``` ALTER DATABASE of DEFAULT CHARACTER SET =utf8;
```
## 查看警告

```SHOW WARNINGS;
```
## 删除

```DROP DATABASE db_name;
```
## 查看引擎

```SHOW ENGINES\G;
引擎参数
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* 1. row \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
	  Engine: InnoDB
	 Support: DEFAULT
	 Comment: Supports transactions, row-level locking, and foreign keys
Transactions: YES  是否支持事务
	      XA: YES  是否支持分布式
  Savepoints: YES  是否支持保存点
```
  
  

## 查看支持的引擎信息

```SHOW VARIABLES LIKE 'have%';
 
+------------------------+----------+
| Variable\_name          | Value    |
+------------------------+----------+
| have\_compress          | YES      |
| have\_crypt             | YES      |
| have\_dynamic\_loading   | YES      |
| have\_geometry          | YES      |
| have\_openssl           | DISABLED |
| have\_profiling         | YES      |
| have\_query\_cache       | YES      |
| have\_rtree\_keys        | YES      |
| have\_ssl               | DISABLED |
| have\_statement\_timeout | YES      |
| have\_symlink           | YES      |
+------------------------+----------+

```


## 存储引擎区别
Innodb
MyISAM
Memary
## 创建表

```CREATE TABLE IF NOT EXISTS cms\_cate(
 id TINYINT,
 cateName VARCHAR(50),
 cate\_Desc VARCHAR(200)
)ENGINE= MyISAM CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS cms\_news(
id INT,
title VARCHAR(50),
content TEXT,
pubtime INT,
clickNum INT,
isTop TINYINT(1) COMMENT '0代表不置顶,1代表置顶'
);
```

## 测试整形

```CREATE TABLE intest(
num1 TINYINT,
num2 SMALLINT,
num3 MEDIUMINT,
num4 INT,
num5 BIGINT
);
```

## 无符号UNSINGED

```CREATE TABLE unsingint(
num1 TINYINT UNSINGED,
num2 TINYINT
);
```
## 显示长度 零填充


```CREATE TABLE intest1(
num1 TINYINT(3) ZEROFILL,
num2 SMALLINT ZEROFILL,
num3 MEDIUMINT ZEROFILL,
num4 INT ZEROFILL,
num5 BIGINT ZEROFILL
);
```

## 测试浮点类型

```CREATE TABLE ftest(
num1 FLOAT(6,2),
num2 DOUBLE(6,2),
num3 DECIMAL(6,2)//定点数
);
```

## 测试字符串类型

```CREATE TABLE chartest(
str1 CHAR(5),
str2 VARCHAR(5)
);
```
char 后面的空格会去掉
varchar 后面的空格会去掉
放在开始的空格都不会去掉,都会被留下.
## text
为优化 能不用就不用  (不能有默认)


## 枚举类型

```CREATE TABLE IF NOT EXISTS enutest(
sex ENUM('男','女','保密')
);
```

## 集合类型

```CREATE TABLE IF NOT EXISTS settest(
fav SET('a','b','c','d')
);
```

## S日期类型
### Year类型

```CREATE TABLE yeartest(
birth YEAR);
```
两位输入 70-99 
0 2000 字符串
数字0 
1-69
### time

```CREATE TABLE timetest(
test TIME);
```

## 测试主键
主键 值不能重复 标记主键 自动非空.
但字段主键 多字段主键
//测试主键

```CREATE TABLE user1(
id INT PRIMARY KEY,
username VARCHAR(20)
);
```

### 查看创建表信息

```SHOW CREATE TABLE user1;
```

## 多字段主键 复合主键

```CREATE TABLE IF NOT EXISTS user2(
id INT,
usernae VARCHAR(20),
card char(18),
PRIMARY KEY(id,card)
);
```

## 测试自增
一个表只能有一个自增长 针对整形

```CREATE TABLE IF NOT EXISTS user3(
id INT PRIMARY KEY AUTO\_INCREMENT,
username VARCHAR(20)
);
CREATE TABLE IF NOT EXISTS user4(
id INT PRIMARY KEY AUTO\_INCREMENT,
username VARCHAR(20)
)AUTO\_INCREMENT = 100;
```

//修改自增长值

```ALTER TABLE user4 AUTO\_INCREMENT = 200;
```
## 测试非空
CREATE TABLE IF NOT EXISTS user5(
id INT PRIMARY KEY AUTO\_INCREMENT,
username VARCHAR(20) NOT NULL,
password CHAR(32) NOT NULL,
age TINYINT UNSIGNED
);
## 测试默认值
CREATE TABLE IF NOT EXISTS user7(
id INT PRIMARY KEY AUTO\_INCREMENT,
username VARCHAR(20) NOT NULL UNIQUE,
password CHAR(32) NOT NULL,
age TINYINT,
addr VARCHAR(30) NOT NULL DEFAULT '北京',
sex ENUM('男','女','保密') NOT NULL DEFAULT '保密'
);

## 测试unique
CREATE TABLE IF NOT EXISTS user8(
id INT PRIMARY KEY AUTO\_INCREMENT,
username VARCHAR(20) NOT NULL UNIQUE,
password VARCHAR(32) NOT NULL UNIQUE,
card VARCHAR(30) UNIQUE
);


# SQL总结
CREATE TABLE [IF NOT EXISTS] table\_name(
字段名 字段类型[UNSIGNED| ZEROFILL] [NOT NULL] [DEFAULT默认值] [[PRIMARY] KEY] [UNIQUE KEY] [AUTO\_INCREMENT]
)ENGINE = INNODB CHARASET = UTF8 AUTO\_INCREMENT =100;
# 创建用户表
CREATE TABLE IF NOT EXISTS user10(
id INT UNSIGNED KEY AUTO_INCREMENT,
username VARCHAR(20) NOT NULL UNIQUE,
password CHAR(32) NOT NULL,
email VARCHAR(50) NOT NULL DEFAULT '979890264',
age TINYINT UNSIGNED DEFAULT 18,
address VARCHAR(200) NOT NULL,
sallary FLOAT(6,2),
regTime  INT UNSIGNED,
face CHAR(100) NOT NULL DEFAULT 'default.jpg'
);

##修改表名
ALTER TABLE tab_name RENAME  TO new_table_name;
ALTER TABLE user10 RENAME TO user9;
ALTER TABLE user10 RENAME AS user9;
ALTER TABLE user10 REAME user9;

RENAME TABLE tab_name TO new_tab_name;
RENAME TABLE user10 TO user9;TO不可以省略.

#添加删除字段
ALTER TABLE tab_name ADD
##添加card字段
ALTER TABLE user9 ADD card CHAR(18);

after 
ALTER TABLE user9 ADD test3 VARCHAR(20) NOT NULL DEFAULT 100 AFTER username;
ALTER TABLE user9 ADD test2 VARCHAR(20) NOT NULL FIRST;

##添加多个字段
 ALTER TABLE user9 ADD test4 INT NOT NULL DEFAULT 123 AFTER password,
    -> ADD test5 FLOAT(6,2) FIRST,
    -> ADD test6 SET('A','B','C');
#删除
ALTER TABLE user9 DROP test6;
ALTER TABLE user9
DROP test2,
DROP test3,
DROP test4;

##添加test9 删除address
ALTER TABLE user9 
ADD test9 INT NOT NULL DEFAULT 10 AFTER age,
DROP address;

#修改字段MODIFY

ALTER TABLE tab_name MODIFY;
//修改长度
ALTER TABLE user9 MODIFY email VARCHAR(200) NOT NULL DEFAULT 'jankz@jankz.com';
//移动字段位置
ALTER TABLE user10 MODIFY card VARCHAR(20) AFTER test9;
//
#修改字段名称CHANGE
ALTER TABLE tab_name  CHANGE
ALTER TABLE user10 CHANGE test9 test10 CHAR(32) NOT NULL DEFAULT 'JANKZ';
ALTER TABLE user9 CHANGE test10 test10 INT NOT NULL DEFAULT 12;
#删除默认值
CREATE TABLE IF NOT EXISTS test12(
id TINYINT UNSIGNED KEY AUTO_INCREMENT,
username VARCHAR(20) NOT NULL UNIQUE,
age TINYINT UNSIGNED
);

//添加默认值
ALTER TABLE test12 ALTER age SET DEFAULT 18;

//删除默认值
ALTER TABLE tab_name ALTER 字段 DROP DEFAULT;
#主键
//添加主键
ALTER TABLE tab_name ADD PRIMARY KEY (id);
ALTER TABLE tab_name ADD PRIMARY KEY (id,card);

//删除主键

ALTER TABLE tab_name DROP PRIMARY KEY;


#删除唯一


##添加唯一索引
CREATE TABLE IF NOT EXISTS user12(
id TINYINT UNSIGNED KEY AUTO_INCREMENT,
username VARCHAR(20) NOT NULL,
card CHAR(18) NOT NULL,
test VARCHAR(20) NOT NULL,
test1 VARCHAR(32) NOT NULL
);
//添加唯一索引
ALTER TABLE user12 ADD UNIQUE (username);
//
ALTER TABLE user12 ADD CONSTRAINT symbol UNIQUE KEY uni_card(card);
//添加联合索引
ALTER TABLE user12 ADD CONSTRAINT symbol UNIQUE INDEX mulUni_test_test1(test,test1);

 //删除唯一索引
 ALTER TABLE user12 DROP INDEX username;
 ALTER TABLE user12 DROP KEY uni_card;
#修改存储引擎
//修改
ALTER TABLE user12 ENGINE=MyISAM;

#修改自增长值
ALTER TABLE user_12 AUTO_INCREMENT=100;


#插入记录
CREATE TABLE IF NOT EXISTS user13(
id INT UNSIGNED KEY AUTO_INCREMENT,
username VARCHAR(30) NOT NULL,
password VARCHAR(32) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE
);
INSERT tab_name(字段) VALUES(值)
INSERT tab_name(字段) VALUES(值),(值),(...);

INSERT user13(username,password,email) VALUES('A','B','C1'),('g','s','d');

##将查询结果放入表中
CREATE TABLE IF NOT EXISTS testuser(
id TINYINT UNSIGNED KEY AUTO_INCREMENT,
username VARCHAR(20) NOT NULL UNIQUE);
##将一个表的查询结果放入另一个表
INSERT testuser SELECT id,username FROM user5;

#更新字段值
UPDATE tab_name SET字段名=值 WHERE 条件
 UPDATE user13 SET age=1;
 //不带where条件会默认全部修改
 UPDATE user13 SET age=10 WHERE username='A';
 
 
 ##删除记录
DELETE FROM tab_name WHERE 条件;

TURNCATE [TABLE] tab_name 彻底清空数据表 会重置AUTO_INCREMENT 不带WHERE条件.

#查询
##单表查询
SELECT * FROM tab_name;
--查询
SELECT cms_admin.* FROM cms_admin; 
SELECT cms_admin.* FROM cms_admin;
单表查询 也可以SELECT * FROM cms_admin;
SELECT id,username FROM cms_admin;

//不打开库的情况下 库名.表名;
SELECT id,username,password FROM cms.csm_admin;

//字段来自那张表
SELECT cms_admin.id,cms_admin.username FROM cms.cms_admin;

##别名;
查询给表名起别名
SELECT a.id,a.username,a.password FROM cms_admin AS a; 

//给字段起别名;
SELECT id AS '编号',username AS '用户名' FROM cms_admin;
 SELECT 1,2,3,4,5,id,username FROM cms_user;
 
 ##
 SELECT * FROM cms_user WHERE id = 1;


--查询age null
 SELECT * FROM cms_user WHERE age=NULL;
 查询不到结果
 SELECT * FROM cms_user WHERE age<=>NULL
 检测NULL值
 IS NULL IS NOT NULL 
 SELECT * FROM csm_user WHERE age IS NULL;

SELECT * FROM cms_user WHERE age IS NOT NULL;

##检测范围
###BETWEEN AND, NOT BETWEEN AND
SELECT *FROM cms_user WHERE id BETWEEN 2 AND 10;
### IN, NOT IN
//查询编号1,3,5,7,9.
SELECT * FROM cms_user WHERE id IN(1,3,5,7,9,11);
//对字符串
SELECT * FROM cms_user WHERE username in('king','queen','张三');
##模糊查询 LIKE NOT LIKE
--模糊查询% 代表 0个1个或者任意多个
_:代表1个人一个
SELECT * FROM cms_user WHERE username LIKE '%张%';//包含
SELECT * FROM cms_user WHERE username LIKE '张%';

--查询用户名为三位的用户;
SELECT *FROM cms_user WHERE username LIKE '___';

SELECT *FROM cms_user WHERE username LIKE '_i%';
##逻辑运算符
AND 并且 ,OR 或者.
--查询用户名king密码king;\
SELECT * FROM cms_user WHERE username = 'king' AND password = 'king';
--查询标号大于等于3年龄不为NULL
SELECT * FROM cms_user WHERE id>=3 AND age IS NULL;

##分组查询
--按照用户所属身份分组proid
SELECT * FROM cms_user GROUP BY proid;
//实测没用啊

--按照多个字段分组
SELECT * FROM cms_user GROUP BY id;
SELECT * FROM cms_user WHERE id>=5 GROUP BY sex;
--查询 id,sex,用户名按照性别分组
SELECT id,sex,GROUP_CONCAT(username) FROM cms_user GROUP BY sex;

##统计记录
SELECT COUNT(*) AS totalUsers FROM cms_user;
SELECT COUNT(id) AS totalUsers FROM cms_user;

SELECT COUNT(age) AS totalUsers FROM cms_user;//不统计NULL值

--编号 性别 用户名详情 组中最大最小平均年龄 年龄总和.

SELECT id,sex GROUP_CONCAT(username)
COUNT(*) AS totalUsers,
MAX(age) AS max_age,
MIN(age) AS min_age,

AVG(age) AS avg_age,

SUM(age) AS sum_age,

FROM cms_user,
GROUP BY sex;

##having
--查询sex
SELECT sex,GROUP_CONCAT(username) AS users,
COUNT(*) AS totalUsers,
MAX(age) AS max_age,
MIN(age) AS min_age,
AVG(age) AS avg_age,
SUM(age) AS sum_age,
FROM cms_user,
GROUP BY sex,
HAVING COUNT(*)>2 AND MAX(age)>60;


##正则表达式
REGEXP'匹配方式'
###  ^  匹配字符开始
//查询t开头
SELECT * FROM cms_user WHERE username REGEXP '^t';
### $  匹配字符串结尾
//查询g结尾
SELECT * FROM cms_user WHERE username REGEXP 'g$';
### .代表字符串中任意一个字符
SELECT * FROM cms_user WHERE username REGEXP '.';
SELECT * FROM cms_user WHERE username REGEXP 'r..e';
### []匹配任何一个
[lto]
SELECT * FROM cms_user WHERE username REGEXP '[lto]';
### [^]匹配除了字符集合任何一个
[lto]
SELECT * FROM cms_user WHERE username REGEXP '[^l]';

### [a-k]匹配a-k字符集合任何一个
[lto]
SELECT * FROM cms_user WHERE username REGEXP '[a-k]';

### s1|s2|s3 匹配其中任何一个

SELECT * FROM cms_user WHERE username REGEXP 'ng|qu';
### * 匹配 0 次 1次 多次  

SELECT * FROM cms_user WHERE username REGEXP 'ng*';
### + 匹配 至少出现1次

SELECT * FROM cms_user WHERE username REGEXP 'ng+';
### + 匹配 出现2次
字符串{M,N}

SELECT * FROM cms_user WHERE username REGEXP 'ng{2}';
SELECT * FROM cms_user WHERE username REGEXP 'ng{1,3}';
##MySQL的运算符
SELECT 1+1,1-3,4*3;
SELECT 3 / 0;
SELECT 3 DIV 2;
//取余数
8%3 8 MOD 3

SELECT id,username,username REGEXP '^t' FROM cms_user;
###比较运算符
结果只能真假

###逻辑运算


#mysql函数
##数学函数
SELECT NOW();
SELECT VERSION();

###cell 取整
##字符串函数






#索引
一种特殊的数据结构 优化查询速度.
--创建索引

```CREATE TABLE testindex(
id TINYINT UNSIGNED,
username VARCHAR(20),
INDEX in_id(id),
KEY in_username(username)
);
```

	--创建唯一索引

```CREATE TABLE testindex2(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
card CHAR(18) NOT NULL,
UNIQUE KEY uni_card(card)
);
```
	--创建全文索引 


```CREATE TABLE testindex3(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
username VARCHAR(20) NOT NULL UNIQUE,
userDesc CHAR(18) NOT NULL,
FULLTEXT INDEX full_userDesc(userDesc)
);
```


--创建单例索引


```CREATE TABLE testindex4(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
test1 VARCHAR(20) NOT NULL,
test2 VARCHAR(20) NOT NULL,
test3 VARCHAR(20) NOT NULL,
test4 VARCHAR(20) NOT NULL,
test5 VARCHAR(20) NOT NULL,
test6 VARCHAR(20) NOT NULL,
INDEX in_test1(test1)
);
```

--创建多列索引

```
CREATE TABLE testindex5(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
test1 VARCHAR(20) NOT NULL,
test2 VARCHAR(20) NOT NULL,
test3 VARCHAR(20) NOT NULL,
test4 VARCHAR(20) NOT NULL,
test5 VARCHAR(20) NOT NULL,
test6 VARCHAR(20) NOT NULL,
INDEX mul_t1_t2_t3(test1,test2,test3)
);
```

--创建空间索引

```
CREATE TABLE testindex6(
id TINYINT UNSIGNED AUTO_INCREMENT KEY,
test GEOMETRY NOT NULL,
SPATIAL INDEX spa_test(test)
)ENGINE=MyISAM;
```

#删除索引
//普通索引

```DROP INDEX in_id ON test4;
DROP INDEX in_username ON test4;
```
//创建索引

```CREATE INDEX in_id ON test4(id);
CREATE UNIQUE INDEX uni_username ON test4(username);

ALTER TABLE test4 ADD UNIQUE INDEX uni_card(card);

ALTER TABLE test4 ADD INDEX in_username(username);
```
 
 //删除唯一索引

```ALTER TABLE testindex4 DROP INDEX uni_card;
DROP INDEX username ON test4; 
```


//删除全文索引

```DROP INDEX full_userDesc ON test6;
CREATE FULLTEXT INDEX full_userDesc ON test6;

```


