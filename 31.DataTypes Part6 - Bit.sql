create table tblemps(
	Employeeid int,
	Empname varchar(100),
	IsActive bit
)
select * from tblemps

insert into tblemps(Employeeid,Empname,IsActive) values(1,'john',1)

insert into tblemps(Employeeid,Empname,IsActive) values(2,'aman',0)

insert into tblemps(Employeeid,Empname,IsActive) values(3,'rakesh','True')

insert into tblemps(Employeeid,Empname,IsActive) values(4,'mahesh','False')
