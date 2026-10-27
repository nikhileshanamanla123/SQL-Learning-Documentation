
SELECT NEWID()

create table tblEmployees(
	EmplId uniqueidentifier,
	Empname varchar(100)
)

select * from tblEmployees

insert into tblEmployees(EmplId,Empname) values(NEWID(),'john')

insert into tblEmployees(EmplId,Empname) values(NEWID(),'sam')

---------------------------------------
create table tblEmployees2(
	EmplId uniqueidentifier default newid(),
	Empname varchar(100)
)


insert into tblEmployees2(Empname) values('john')

insert into tblEmployees2(Empname) values('sam')

select * from tblEmployees2