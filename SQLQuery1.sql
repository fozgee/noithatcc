create database Noithatcc
go
create table Account
(
Id int primary key identity,
LoginName nvarchar(200),
DisplayName nvarchar(200),
Password nvarchar(200),
Description nvarchar(400),
AvatarLink nvarchar(200),
CreatedDate datetime,
Role int
)

create table New
(
Id int primary key identity,
Title nvarchar(300),
Link nvarchar(300),
Description nvarchar(500),
AccountID int references Account(Id),
Body nvarchar(max),
Thumbnail nvarchar(300),
CreatedDate datetime,
PublishDate datetime,
MetaTitle nvarchar(300),
MetaDescrip nvarchar(300),
MetaKeywords nvarchar(400)
)



select * from Account