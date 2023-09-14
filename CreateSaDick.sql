use Sadick

create table ChildGroup
(
	groupNum_ int,
	numOfChild_ tinyint

	primary key(groupNum_)
)

create table Parent
(
	parentPhoneNum_ bigint,
	name_ nvarchar(20),
	surname_ nvarchar(20)

	primary key(parentPhoneNum_),
)

create table Child
(
	birthSertificateSerNum_ nvarchar(12),
	name_ nvarchar(20),
	surname_ nvarchar(20),
	groupNum_ int,
	parentPhoneNum_ bigint

	primary key(birthSertificateSerNum_),
	foreign key(groupNum_) references ChildGroup(groupNum_),
	foreign key(parentPhoneNum_) references Parent(parentPhoneNum_)
)

create table Payment
(
	birthSertificateSerNum_ nvarchar(12),
	monthNotPayed_ tinyint

	primary key(birthSertificateSerNum_),
	foreign key(birthSertificateSerNum_) references Child(birthSertificateSerNum_)
)

create table Visiting
(
	id_ int,
	data_ date,
	birthSertificateSerNum_ nvarchar(12)

	primary key(id_),
	foreign key(birthSertificateSerNum_) references Child(birthSertificateSerNum_)
)

create table Educator
(
	educatorPhoneNum_ bigint,
	name_ nvarchar(20),
	surname_ nvarchar(20),
	groupNum_ int

	primary key(educatorPhoneNum_)
	foreign key(groupNum_) references ChildGroup(groupNum_)
)

create table Administrator
(
	adminPhoneNum_ bigint,
	name_ nvarchar(20),
	surname_ nvarchar(20)

	primary key(adminPhoneNum_)
)

create table LoginParent
(
	parentPhoneNum_ bigint,
	password_ nvarchar(12)

	primary key(parentPhoneNum_),
	foreign key(parentPhoneNum_) references Parent(parentPhoneNum_)
)

create table LoginEducator
(
	educatorPhoneNum_ bigint,
	password_ nvarchar(12)

	primary key(educatorPhoneNum_),
	foreign key(educatorPhoneNum_) references Educator(educatorPhoneNum_)
)

create table LoginAdmin
(
	adminPhoneNum_ bigint,
	password_ nvarchar(12)

	primary key(adminPhoneNum_),
	foreign key(adminPhoneNum_) references Administrator(adminPhoneNum_)
)

--drop table Educator
--drop table Visiting
--drop table Payment
--drop table Child
--drop table Parent
--drop table ChildGroup