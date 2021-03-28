# 进阶1：基础查询

/*
语法：
	select 查询列表
	from 表名;

特点：
	1. 查询列表可以是：表中的字段。还可以是 常量值、表达式、函数
	2. 查询的结果是一个虚拟的表格，不存储在计算机内
*/

# 1. 查询表中的单个字段
select last_name
from employees;

# 2. 查询表中的多个字段
select last_name, salary, email
from employees;

# 3. 查询表中的所有字段
select *
from employees;

/* 
		补充细节问题：
				1. 写sql命令之前，先选中数据库，即 use employees;
				2. 有些时候可以加择中号 (``), 比如:
						select name from xxx;
						因为 name 也是一个关键字，加了择中号表示这是一个字段
						select `name` from xxx;
				3. 先选中要执行的sql块，再点击执行
*/

# 4. 查询常量值
select 100;
select 'sore';

# 5. 查询表达式
select 100*98;
select 100%98;

# 6. 查询函数
select VERSION();
select DATABASE();

# 7. 起别名
/*
		1. 便于理解
		2. 如果查询的字段有重名的情况，使用别名可以区分开来
*/
# 方式一: 使用 as
select 100%98 as 余数;
select last_name as 姓,first_name as 名
from employees;

# 方式二：去掉 as
select last_name 姓,first_name 名
from employees;

# 案例：查询salary，显示为 out put
select salary as 'out put'
from employees;

# 8. 去重
# 案例：查询员工表中涉及到的所有部门编号
select DISTINCT department_id
from employees;

# 9. + 号的作用
/*
		java中的+号：
				1. 运算符，两个操作数都是数值型
				2. 连接符，只要有一个字符串
		mysql中+号：
				仅仅只有一个功能：运算符
				1. 两个操作数都是数值型：	
							select 100+10;    //结果为 110
				2. 如果其中一个操作数为字符：
							select '100'+90; 	// 结果为 190
						则试图将字符型数值转换成数值型，
					如果转换成功，则继续做加法运算。
					如果转换失败，则将字符型数值转换成0：
							select '你好' + 90;  //结果为 90
				3. 只要其中一方为null, 则结果为 null
*/
# 案例：查询员工名和姓连接成一个字段，并显示为 姓名
SELECT last_name+first_name as '姓名'
from employees;

# 10. concat 拼接
/*
		其中一个字段为 null, 则结果为 null
*/
select CONCAT('a','b','c');
select CONCAT(last_name,' ',first_name) as '姓名'
from employees;

select CONCAT('a',null);

# 11. ifnull, 如果为 null, 则可以用一个值替换

SELECT IFNULL(null,0);


/*
	测试：
	
	1. 下面的语句是否可以执行成功  (是)
	select last_name, job_id, salary as sal
	from employees;
	
	2.下面语句是否可以执行成功   （是）
		select * from employees;
		
	 3. 找出下面语句的错误  (原答案是符号不能是中文符号)
		select employee_id, last_name, salary*12 "annual salary"
		from employees;
		
		4. 显示departments的结构，并查询其中的全部数据
		desc departments;
		SELECT * from departments;
		
		5. 显示出表employees中的全部job_id, 不能重复
		select DISTINCT job_id
		from employees;
		
		6.显示出表employees的全部列，各个列之间用逗号连接，列头显示成out_put
		SELECT CONCAT(first_name,',',last_name,',',ifnull(commission_pct,0)) as out_put
		from employees;
*/

