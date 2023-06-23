# MySQL学习
> 笔记源教程： [【付费】MySQL从零到删库跑路（实习能力）教程：一、安装、连接以及配置MySQL--MicroFrank](https://www.yuque.com/books/share/ddbdba56-dc9f-4997-9e18-d9e69309d343/cnbmkg) [`购买链接`](https://item.taobao.com/item.htm?spm=a1z10.1-c.w4004-19115282022.7.4fe07608Ag58vY&id=617388485926)

## MySQL语句

### 库的相关语句

1.连接MySQL

```mysql
mysql -u root -p
```

2.创建data文件

```mysql
cd C:\Program Files\MySQL\MySQL Server 5.7
mysqld --initialize-insecure --user=root
```

3.显示数据库

```mysql
show databases;
```

4.创建数据库

```mysql
create database student;//student为数据库的名字
create database if not exists student;
```

5.删除数据库

```mysql
drop database student；
drop database if exists student;
```

6.查看创建数据库的SQL

```mysql
show create database student;
```

7.创建和查看数据库的字符编码

```mysql
create database if not exists student charset=utf-8;
show create database student;
```

8.修改数据库字符编码

```mysql
alter database student charget=gbk;
```

9.使用这个数据库

```mysql
 use student;
```



### 表的相关语句



1.显示表

```mysql
show table;
```

2.创建表

```mysql
create table if not exists student(
	id auto_increment primary key comment '主键id',
	name varchar(30) not null comment '学生姓名',
	phone varchar(20) not null comment '手机号码',
	address varchar(100) default '暂时未知' comment '家庭住址'
	)engine=innodb;
```

3.查看创建表的SQL

```mysql
de's'cshow create table student;
```

4.查看表结构

```mysql
desc student;
```

5.删除表

```mysql
drop table student;
drop table 111, 222, 333;//当删除多个表时，用逗号隔开
```

6.修改表

```mysql
alter table student add phone varchar(20); //在表中添加phone的数据
alter table student add gender varchar(5) after name; //在表中添加gender，在name这一项后面
alter table student add gender varchar(5) first; //添加并放在首位
alter table student drop gender; //删除表中gender这一项
alter table student change phone tel_phone int(15); //修改字段名和字段类型
alter table student modify tel_phone varchar(15); //修改字段类型
alter table student rename to teather; //修改表的名字


```




