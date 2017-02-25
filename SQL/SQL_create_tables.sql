drop database library
go

Create Database library;
go

Use library;
go

Create table Book(
	Bookid int not null,
	Title varchar (50) not null,
	PublisherName varchar (50),
	Primary Key(Bookid) 
);
Create Table Book_Aurthors(
	Bookid int not null,
	AuthorName varchar (50) not null,
	Primary Key(Bookid)
);
Create Table Publisher(
	Name varchar (50) not null, 
	Address varchar (50)  not null,
	Phone varchar (50)  not null,
	Primary Key (Name)
);
Create Table Book_Copies(
	Bookid int not null,
	Branchid varchar (50) not null,
	No_Of_Copies varchar (50) not null,
);
Create Table Book_Loans(
	Bookid int not null,
	Branchid varchar (50) not null,
	CardNo int not null,
	DateOut varchar (50) not null,
	DueDate varchar (50) not null,
);
Create Table Library_Branch(
	Branchid int not null,
	BranchName varchar (50) not null,
	Address varchar (50) not null,
	Primary Key (Branchid)
);
Create Table Borrower(
	CardNo int not null,
	Name varchar (50) not null,
	Address varchar (50) not null,
	Phone varchar (50),
	Primary Key (CardNo)
);

--This is finished. Go to the data input code--