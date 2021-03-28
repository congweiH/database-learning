# mysql服务启动和停止

两种方式

第一种：

windows 搜索服务，进入服务页面

寻找到 MySQL 开头的服务，然后可以停止服务 或 启动服务



第二种：

管理员身份打开 cmd

停止服务 ：net	stop   mysql(服务名)

启动服务： net   start	mysql 

# mysql服务端登入和退出

打开cmd

登入命令： mysql  -h   localhost   -P   3306   -u   root   -p

上面的命令可以简单写成：mysql  -u  root  -p 

然后输入密码 （我的密码是 root ）



退出命令：exit  或 ctrl+c

# mysql常见命令

查看数据库版本

```text
mysql --version
mysql -V
select version();	// 需要登入到数据库
```



登入数据库后：

显示有哪些数据库：

```sql
show  databases;
```

进入或切换数据库

```sql
use 数据库名;
```

显示数据库有哪些表

```sql
show tables;				// 需要进入这个数据库
show tables from 数据库名;   // 不需要进入这个数据库
```

查看当前在哪个数据库里

```sql
select database();
```

创建表

```sql
create table stuinfo(
	id int,
    name varchar(20));
```

查看表结构

```sql
desc stuinfo;
```

查看表里面数据

```sql
select * from stuinfo;
```

添加数据

```sql
insert into stuinfo(id,name) values(1,'rose');
```

更新数据

```sql
update stuinfo set name = 'liming';
```

删除数据

```sql
delete from stuinfo where id=1;
```



# sql语法规范

1. 不区分大小写，但是建议关键字大写，表名、列名小写。

2. 每条命令最好用分号（；）结尾。

3. 每条命令根据需要，可以进行缩进或换行。

4. 注释

   单行注释： #  注释文字

   单行注释：--  注释文字

   多行注释：/*   注释文字   */

