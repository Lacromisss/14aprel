create database taskq
use taskq
create table Catagories(
Id int primary key identity,
Name nvarchar(40) not null



)
create Table Sliders(
Id int primary key identity,
Title nvarchar(100) not null,
text nvarchar(500) not null,
Image nvarchar(100) not null,
Orderr int not null


)
create table Tags(
Id int primary key identity,
Name nvarchar(40) not null,

)
create table Products(
Id int primary key identity,
Name nvarchar(40) not null,
Price int not null,
CatagoriesId int foreign key references Catagories(Id) not null,
DisCountAmount decimal not null,
isNew bit,
Count int not null,
Description nvarchar(1500) not null,
Code nvarchar(20) not null,
CostPrice decimal(18,2) not null

)
create table ProductTags(
Id int primary key identity,
ProductsId int foreign key references Products(Id) not null,
TagsId int foreign key references Tags(Id) not null,
)
create table Users(
Id int primary key identity,
FullName nvarchar(100) not null,
EMAIL nvarchar(150) not null unique,
Image nvarchar(100) not null,
PasswordHash nvarchar(100) not null,
Address nvarchar(100) not null,

)
create table Reviews(
Id int primary key identity,
ProductsId int foreign key references Products(Id) not null,
UserId int foreign key references Users(Id) not null,
Name nvarchar(100) not null,
EMAIL nvarchar(150) not null unique,
Text nvarchar(350) not null,
CreatedAt datetime2 not null

)
create table Orders(
Id int primary key identity,
UserId int foreign key references Users(Id) not null,
CreatedAt datetime2 not null,
DeliveriedAtt datetime2 not null,
Stasus tinyint not null,
PaymentStasus tinyint not null,
TotalAmount decimal(18,2) not null,








)
create table ProductImages(
Id int primary key identity,
ProductsId int foreign key references Products(Id) not null,
Image nvarchar(100) not null,

)

create table AdditionalInfosTypes(
Id int primary key identity,
Name nvarchar(100) not null,

)
create table AdditionalInfos(
Id int primary key identity,
ProductsId int foreign key references Products(Id) not null,
AdditionalTypes int foreign key references AdditionalInfosTypes(Id) not null,
Value nvarchar(50) not null
)
create table OrderItems(
Id int primary key identity,
ProductsId int foreign key references Products(Id) not null,
OrdersId int foreign key references Orders(Id) not null,
Count int not null,
Price int not null

)

