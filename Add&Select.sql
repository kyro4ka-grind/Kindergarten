use Sadick

insert into Parent(parentPhoneNum_, name_, surname_)
values (88005553535, 'Vasia', 'Pupkin')

insert into ChildGroup(groupNum_, numOfChild_)
values (1, 0)

insert into Child(birthSertificateSerNum_, name_, surname_, groupNum_, parentPhoneNum_)
values ('iii-во206501', 'Olga', 'Pupkina', 0, 88005553535)

insert into Educator(educatorPhoneNum_, name_, surname_, groupNum_)
values (89951053545, 'Ahmed', 'Ibragimov', 0)

insert into Administrator(adminPhoneNum_, name_, surname_)
values (89001053535, 'Chimbumbek', 'Sairatov')

insert into LoginParent(parentPhoneNum_, password_)
values (88005553535, '123')

insert into LoginEducator(educatorPhoneNum_, password_)
values (89951053545, '123')

insert into LoginAdmin(adminPhoneNum_, password_)
values (89001053535, '123')

insert into Payment(birthSertificateSerNum_, monthNotPayed_)
values ('iii-во206501', 0)

insert into Visiting(birthSertificateSerNum_, data_, id_)
values ('iii-во206501', '2001-01-01', 0)

--Select all
use Sadick
select * from Administrator
select * from Child
select * from ChildGroup
select * from Educator
select * from LoginAdmin
select * from LoginEducator
select * from LoginParent
select * from Parent
select * from Payment
select * from Visiting
