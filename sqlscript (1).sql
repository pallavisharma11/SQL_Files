create table Department(Deptno number(3) primary key , Dname varchar2(20) unique ,Location varchar2(20) not null);

create table Employee(Empno varchar2(5) primary key like "E%" , Ename varchar2(20) unique, Designattion varchar2(10) not null,salary number(10) default(25000) between 15000 and 50000 , DOB date not null ,Dno number(3) references Department);

create table Employee(Empno varchar2(5) primary key like "E%" , Ename varchar2(20) unique, Designattion varchar2(10) not null,salary number(10) default(25000) between 15000 and 50000 , DOB date not null ,Dno number(3) references Department));

create table Employee(Empno varchar2(5) primary key check(like "E%") , Ename varchar2(20) unique, Designattion varchar2(10) not null,salary number(10) default(25000) check(between 15000 and 50000) , DOB date not null ,Dno number(3) references Department);

create table E(EmpyNo varchar2(5) primary key check("E%"));

create table E(EmpyNo varchar2(5) primary key check("E%"));

create table E(EmpyNo varchar2(5) primary key check( like "E%"));

create table E(EmpyNo varchar2(5) primary key check(EmpyNo like "E%"));

create table E(EmpyNo varchar2(5) primary key check(like "E%"));

create table E(EmpyNo varchar2(5) primary key check(like "E%") , Ename varchar2(10));

create table E(EmpyNo varchar2(5) primary key like "E%" , Ename varchar2(10));

create table E(EmpyNo varchar2(5) primary key like "E%" , Ename varchar2(10));

create table E(EmpyNo varchar2(5) primary key check(EmpyNo like "E%") , Ename varchar2(10));

create table E(EmpyNo varchar2(5) primary key check(EmpyNo like 'E%') , Ename varchar2(10));

create table E(EmpyNo varchar2(5) primary key check(EmpyNo like 'E%') , Ename varchar2(10) unique , Designation varchar2(10) not null, salary number(10) default 25000);

create table E1(EmpyNo varchar2(5) primary key check(EmpyNo like 'E%') , Ename varchar2(10) unique , Designation varchar2(10) not null, salary number(10) default 25000);

create table E2(EmpyNo varchar2(5) primary key check(EmpyNo like 'E%') , Ename varchar2(10) unique , Designation varchar2(10) not null, salary number(10) default 25000 check(salary between 15000 and 50000));

create table E2(EmpyNo varchar2(5) primary key check(EmpyNo like 'E%') , Ename varchar2(10) unique , Designation varchar2(10) not null, salary number(10) default 25000 check(salary between 15000 and 50000) , DOB date not null , Dno number(3) references Department);

create table E3(EmpyNo varchar2(5) primary key check(EmpyNo like 'E%') , Ename varchar2(10) unique , Designation varchar2(10) not null, salary number(10) default 25000 check(salary between 15000 and 50000) , DOB date not null , Dno number(3) references Department);

Desc E3


create table candidate(CId varchar2(10) primary key , Cname varchar2(20) not null , Cmail varchar2(30) unique check(Cmail like '%@%.%',Cdept number(2), default 'HR' , Cmag varchar2(30) check(Cmag = CId));

create table candidate(CId varchar2(10) primary key , Cname varchar2(20) not null , Cmail varchar2(30) unique check(Cmail like '%@%.%'),Cdept number(2), default 'HR' , Cmag varchar2(30) check(Cmag = CId));

create table candidate(CId varchar2(10) primary key , Cname varchar2(20) not null , Cmail varchar2(30) unique check(Cmail like '%@%.%'),Cdept number(2), default 'HR' , Cmag varchar2(30));

create table candidate(CId varchar2(10) primary key , Cname varchar2(20) not null , Cmail varchar2(30) unique check(Cmail like '%@%.%'),Cdept number(2) default 'HR' , Cmag varchar2(30));

create table candidate(CId varchar2(10) primary key , Cname varchar2(20) not null , Cmail varchar2(30) unique check(Cmail like '%@%.%'),Cdept number(2) default "HR" , Cmag varchar2(30));

create table candidate(CId varchar2(10) primary key , Cname varchar2(20) not null , Cmail varchar2(30) unique check(Cmail like '%@%.%'),Cdept number(2) default 'HR' , Cmag varchar2(30));

create table candidate(CId varchar2(10) primary key , Cname varchar2(20) not null , Cmail varchar2(30) unique check(Cmail like '%@%.%'),Cdept varchar2(2) default 'HR' , Cmag varchar2(30));

create table College (cName varchar2(10), state varchar2(10), enrollment int);

create table Student (sID int, sName varchar2(10), GPA number(2,1),sizeHS int);

create table Apply (sID  int, cName varchar2(10), major varchar2(20));

create table Apply (sID  int, cName varchar2(10), major varchar2(20));

alter table College add primary key(Cname);

alter table Student add primary key(sID);

alter table Apply add primary key (sID, cName, major);

alter table Apply add foreign key(sID) references student and foreign key(cNAME) references college);

alter table Apply add major(25);

alter table Apply add major varchar2(25);

select * from E3;

alter table Apply modify major varchar2(25);

alter table Apply add (decision varchar2(3) not null);

desc Apply


alter table Apply modify decision char(1);

desc Apply


alter table Apply add sId foreign key (sId) references student;

alter table Apply add constraint sId foreign key (sId) references student;

alter table Apply add constraint foreign key (sId) references student ;

alter table Apply add constraint foreign key (sId) references student;

alter table Apply add constraint sId foreign key (sId) references student;

alter table Apply add constraint sId foreign key (sId) references student,cName foreign key(cName) refernces college;

alter table Apply drop foreign key(cName);

alter table Apply drop foreign key;

alter table Apply drop foreign key cName;

alter table Apply drop foreign key sId;

alter table student drop column sizeHS;

alter table college drop primary key;

alter table Apply add constraint unique(cName , major);

alter table Apply add constraint unique_pair unique(cName , major);

alter table college rename column enrollment to enroll;

desc roll


desc college


