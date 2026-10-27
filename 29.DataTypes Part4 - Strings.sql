create table tblstrdatatypes(
	employeename char,
	city varchar
)

-- error bcos char is for only one character
insert into tblstrdatatypes(employeename,city) values('abc','xyz')

select * from tblstrdatatypes

---------------------------------------
create table tblstrdatatypes2(
	employeename char(5),
	city varchar(5)
)

insert into tblstrdatatypes2(employeename,city) values('abc','xyz')

select * from tblstrdatatypes2

---------------------------------------
create table tblstrdatatypes3(
	employeename char(8000),
	city varchar(8000)
)

---------------------------------------
create table tblstrdatatypes4(
	employeename char(8001),
	city varchar(8001)
)

---------------------------------------
create table tblstrdatatypes5(
	employeename char(5),
	city varchar(5),
	city2 varchar(max)
)

---------------------------------------
-- other than english letter use this
create table tblstrdatatypes6(
	employeename nchar(4000),
	city nvarchar(4000),
	city2 nvarchar(max)
)