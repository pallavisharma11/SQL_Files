REM   Script: Assignment1_SQL
REM   First Assignment

create table student(sId int, sName varchar2(10), GPA number(2,1) , sizeHs int, DoB date);

create table college(cName varchar2(10), state varchar2(10) , enrollment int);

create table apply(sId int , cName varchar2(10) , major varchar2(20), decision char(1));

insert into apply values(123, 'Stanford' ,'CS', ' Y');

insert into apply values(123, 'Stanford' ,'CS', Y);

insert into apply values(123, 'Stanford' ,'CS', 'Y');

insert into apply values(123, 'Stanford' ,'EE', 'Y');

insert into apply values(123, 'Berkeley' ,'CS', 'Y');

insert into apply values(123, 'Cornell' ,'EE', 'Y');

insert into apply values(234, 'Berkeley' ,'biology', 'Y');

insert into apply values(345, 'MIT' ,'bioengineering', 'Y');

insert into apply values(345, 'Cornell' ,'bioengineering', 'Y');

insert into apply values(345, 'Cornell' ,'CS', 'Y');

insert into apply values(345, 'Cornell' ,'EE', 'Y');

insert into apply values(678, 'Stanford' ,'history', 'Y');

insert into apply values(987, 'Stanford' ,'CS', 'Y');

insert into apply values(987, 'Berkeley' ,'CS', 'Y');

insert into apply values(876, 'Stanford' ,'CS', 'Y');

insert into apply values(876, 'MIT' ,'biology', 'Y');

insert into apply values(876, 'MIT' ,'marine biology', 'Y');

insert into apply values(765, 'Stanford' ,'history', 'Y');

insert into apply values(765, 'Cornell' ,'history', 'Y');

insert into apply values(765, 'Cornell' ,'psychology', 'Y');

insert into apply values(543, 'MIT' ,'CS', 'Y');

select * from apply;

delete from apply;

select * from apply;

insert into apply values(123, 'Stanford' ,'CS', 'Y');

insert into apply values(123, 'Stanford' ,'EE', 'Y');

insert into apply values(123, 'Berkeley' ,'CS', 'Y');

insert into apply values(123, 'Cornell' ,'EE', 'Y');

insert into apply values(234, 'Berkeley' ,'biology', 'N');

insert into apply values(345, 'MIT' ,'bioengineering', 'Y');

insert into apply values(345, 'Cornell' ,'bioengineering', 'N');

insert into apply values(345, 'Cornell' ,'CS', 'Y');

insert into apply values(345, 'Cornell' ,'EE', 'N');

insert into apply values(678, 'Stanford' ,'history', 'Y');

insert into apply values(987, 'Stanford' ,'CS', 'Y');

insert into apply values(987, 'Berkeley' ,'CS', 'Y');

insert into apply values(876, 'Stanford' ,'CS', 'N');

insert into apply values(876, 'MIT' ,'biology', 'Y');

insert into apply values(876, 'MIT' ,'marine biology', 'N');

insert into apply values(765, 'Stanford' ,'history', 'Y');

insert into apply values(765, 'Cornell' ,'history', 'N');

insert into apply values(765, 'Cornell' ,'psychology', 'Y');

insert into apply values(543, 'MIT' ,'CS', 'N');

select * from apply;

insert into student values(123, 'Amy', 3.9, 1000, '26-JUN-96');

insert into student values(234, 'Bob', 3.6, 1500, '7-Apr-95');

insert into student values(345, 'Craig', 3.5, 500, '4-Feb-95');

insert into student values(456, 'Doris', 3.9, 1000, '24-Jul-97');

insert into student values(567, 'Edward', 2.9, 2000, '21-Dec-96');

insert into student values(678, 'Fay', 3.8, 200, '27-Aug-96');

insert into student values(789, 'Gary', 3.4, 800, '8-Oct-96');

insert into student values(987, 'Helen', 3.7, 800, '27-Mar-97');

insert into student values(876, 'Irene', 3.9, 400, '7-Mar-96');

insert into student values(765, 'Amy', 2.9, 1500, '8-Aug-98');

insert into student values(654, 'Jay', 3.9, 1000, '26-May-96');

insert into student values(543, 'Craig', 3.4, 2000, '27-Aug-98');

select * from student;

insert into college values('Stanford','CA' ,15000);

insert into college values('Berkeley','CA' ,36000);

insert into college values('MIT','MA' ,10000);

insert into college values('Cornell','NY' ,21000);

insert into college values('Harvard','MA' ,50040);

select * from college;

select sName ,DoB from student;

select sName from student where GPA > 3.7;

select sName from student where sizeHs >= 1000 and DoB > 31-Dec-1996;

select sName from student where sizeHs >= 1000 and DoB > '31-Dec-1996';

select sName from student where sizeHs >= 1000 and DoB > '31-Dec-96';

select sName from student where GPA between 2.9 and 3.9;

select * from college where state = 'MA';

select sName from student where GPA > 2.0 and GPA < 3.5;

SELECT sName from student where DoB > '1-Jul-96' order by DoB;

select sId , cName , decision from apply where decision = 'Y';

select sId , cName  from apply where cName = 'Stanford';

select cName from college where enrollment > 10001;

select * from college where state != 'CA';

select * from college where state not in('CA');

select sName from student where sizeHs >= 1700 and GPA< 3.8;

Desc student


select * from students;

select * from student;

select unique major grom apply;

select unique major from apply;

select distinct major from apply;

select sName from student where sName like '___';

select sName from student where sName like 'H____';

select sName from student where sName like '__e_e%';

select sName from student where sName like '%y';

select sName from student order by GPA;

select sName ,GPA from student order by GPA;

select count(sName) ,GPA from student order by GPA;

select count sName ,GPA from student order by GPA;

select sName ,GPA from student order by GPA;

select * from student order by GPA and order by DoB desc;

select * from student order by GPA and  DoB desc;

select * from student order by GPA and  DoB DESC;

select sId from apply where  cName in ('Stanford' ,'Cornell' ,'MIT');

select sId , cName from apply where  cName in ('Stanford' ,'Cornell' ,'MIT');

delete from apply where cName = 'Stanford';

delete from apply where cName = 'Stanford';

delete from college where cName = 'Stanford';

update student set GPA = GPA * GPA/10;

select * from student;

update student set GPA = GPA+1.5 where  GPA < 3.5 and sizeHs > 1500;

delete from student where GPA < 3.2;

select * from student order by GPA , DoB DESC;

