create database SQL_MEGA_PROJECT
create table Employeedetail(Employeeid int,Firstname varchar(max),lastname varchar(max),Salary int,
Joiningdate date,Department varchar(max),Gender varchar(max))
select * from Employeedetail
insert into Employeedetail values(1,'Vikas','Ahlawat',600000,'2013-12-2','IT','Male')
insert into Employeedetail values(2,'Nikita','Jain',530000,'2013-02-14','HR','Female')
update Employeedetail set Joiningdate='2013-02-12' where Employeeid =1
insert into Employeedetail values(3,'Ashish','Kumar',1000000,'2013-02-14','IT','Male')
insert into Employeedetail values(4,'Nikhil','Sharma',480000,'2013-02-15','HR','Male')
insert into Employeedetail values(5,'Anish','Kadian',500000,'2013-02-16','Paroll','Male')
select * from Employeedetail
-----------------------
create table Projectdetail(projectdetailid int,Employeedetailid int,Projectname varchar(max))
insert into Projectdetail values(1,1,'Task Track')
insert into Projectdetail values(2,1,'CLP')
insert into Projectdetail values(3,1,'Surevey Mangement')
insert into Projectdetail values(4,2,'HR Management')
insert into Projectdetail values(5,3,'Task Track')
insert into Projectdetail values(6,3,'GRS')
insert into Projectdetail values(7,3,'DDS')
insert into Projectdetail values(8,4,'HR Management')
insert into Projectdetail values(9,6,'GL Management')
-----`
select * from Projectdetail


-----2
select Firstname from Employeedetail

------3
select upper (Firstname) 'First Name' from Employeedetail

------4
select Firstname,UPPER(left(Firstname,1)) + SUBSTRING(Firstname, 2 ,LEN(Firstname)) as name from Employeedetail

-------5
select * from Employeedetail
select *,CONCAT(Firstname,' ',Lastname) 'first and last name' from Employeedetail
select *,Firstname + ' ' + Lastname 'First and last name' from Employeedetail

-------6
select* from Employeedetail where Firstname like 'Vikas'
select* from Employeedetail where Firstname = 'Vikas'

select* from Employeedetail
-------7
select * from Employeedetail where Firstname like 'A%'


--------8
select * from Employeedetail where Firstname like 'A%'



--------9

select * from Employeedetail where Firstname like '%H'

--------10  
select * from Employeedetail
select *from Employeedetail where Firstname like '[^a-p]'


--------11
SELECT * FROM [EmployeeDetail] WHERE FirstName like '[^a-p]%'


-------12
select* from Employeedetail where Gender like '__le'



--------13
select * from Employeedetail where Firstname like 'A_____'



-------14
select * from Employeedetail where Firstname like 'Vik%as'
SELECT * FROM [EmployeeDetail]WHERE FirstName like'%a%'

-------15
select * from Employeedetail
select distinct Department from EmployeeDetail



--------16
select MAX (Salary) 'Max salry' from Employeedetail
select* from Employeedetail

--------17
select MIN (Salary) 'MIN salry' from Employeedetail



--------18

 SELECT CONVERT(VARCHAR(20),JoiningDate,106) FROM [EmployeeDetail]

--------19
SELECT CONVERT(VARCHAR(20),JoiningDate,111) FROM [EmployeeDetail]


---------20
SELECT CONVERT(VARCHAR(max),JoiningDate,108) FROM [EmployeeDetail]



--------21
select* from Employeedetail
SELECT DATEPART(YEAR, JoiningDate) FROM [EmployeeDetail]


------22
 SELECT DATEPART(MONTH,JoiningDate) FROM [EmployeeDetail]


-----23

select getdate()


-----24
select getutcdate()


----25
SELECT FirstName, GETDATE() [Current Date], JoiningDate,
DATEDIFF(MM,JoiningDate,GETDATE()) AS [Total Months] FROM [EmployeeDetail]

----26
 SELECT * FROM [EmployeeDetail] WHERE DATEPART(YYYY,JoiningDate) = '2013'


---27

 SELECT * FROM [EmployeeDetail] WHERE DATEPART(MM,JoiningDate) = '1'


---28

 SELECT * FROM [EmployeeDetail] WHERE DATEPART(MM,JoiningDate) = '1'


----29

select count(*) from Employeedetail


----30,31
SELECT TOP 1 * FROM [EmployeeDetail]

----32

select* from Employeedetail where Firstname   in ('Vikas','Ashish','Nikhil')



----33
select* from Employeedetail where Firstname  not in ('Vikas','Ashish','Nikhil')



------34
SELECT RTRIM(FirstName) AS [FirstName] FROM [EmployeeDetail]


----35

SELECT LTRIM(FirstName) AS [FirstName] FROM [EmployeeDetail]

----36
select FirstName,
case
when Gender='Male' then 'M'
when Gender='Female' then 'F'
end as 'gender'
from Employeedetail


-----37

select 'Hello'+FirstName from Employeedetail


select CONCAT ('Hello',' ',FirstName) from Employeedetail

-----38
select * from Employeedetail where Salary >600000


----39
select * from Employeedetail where Salary <700000


------40
select * from Employeedetail where Salary between 500000 and 600000


-----41
select *from Projectdetail

-----42
select *from Employeedetail

select Department , SUM(Salary) 'sum of department' from Employeedetail
Group by Department



-----43
select Department , SUM(Salary) 'sum of department' from Employeedetail
Group by Department
order by [sum of department] asc

----44 
select Department , SUM(Salary) 'sum of department' from Employeedetail
Group by Department
order by [sum of department] desc


-----45
select Department, count(*) 'Dept count', sum(Salary) 'Total Salary' from EmployeeDetail
Group by Department


----46
select Department,Avg(Salary) 'Avg salary' from Employeedetail
group by Department
order by [Avg salary] asc



-----47

select * from Employeedetail
select Department,MAX(Salary) 'Max salary' from Employeedetail
group by Department
order by [Max salary] asc




----48


select * from Employeedetail 
select Department, MIn(Salary) 'Min salary' from Employeedetail
group by Department
order by [Min salary]

-----49
select Department, MIn(Salary) 'Min salary' from Employeedetail
group by Department
order by [Min salary]


-----50



------------51
select * from Employeedetail
select * from Projectdetail
select Employeedetail.Firstname,Projectdetail.Projectname from Employeedetail inner join Projectdetail
on Employeedetail.Employeeid=Projectdetail.Employeedetailid
order by Employeedetail.Firstname,Projectdetail.Projectname

SELECT FirstName,ProjectName FROM [EmployeeDetail] A INNER JOIN [ProjectDetail]B
ON A.EmployeeID = B.EmployeeDetailID
ORDER BY FirstName


-----52
select Employeedetail.Firstname,Projectdetail.Projectname from Employeedetail left join Projectdetail
on Employeedetail.Employeeid=Projectdetail.Employeedetailid
order by Employeedetail.Firstname,Projectdetail.Projectname


----53
SELECT FirstName, ISNULL(ProjectName,'-No ProjectAssigned') FROM[EmployeeDetail] A
LEFT OUTER JOIN [ProjectDetail] B
ON A.EmployeeID = B.EmployeeDetailIDORDER BY FirstName

-----54
select Employeedetail.Firstname,Projectdetail.Projectname from Employeedetail right join Projectdetail
on Employeedetail.Employeeid=Projectdetail.Employeedetailid
order by Employeedetail.Firstname,Projectdetail.Projectname

----55
select Employeedetail.Firstname,Projectdetail.Projectname from Employeedetail full join Projectdetail
on Employeedetail.Employeeid=Projectdetail.Employeedetailid
order by Employeedetail.Firstname,Projectdetail.Projectname



-----56
select Employeedetail.Firstname,Projectdetail.Projectname from Employeedetail full join Projectdetail
on Employeedetail.Employeeid=Projectdetail.Employeedetailid
order by Employeedetail.Firstname,Projectdetail.Projectname



----57
select Employeedetail.Firstname,Projectdetail.Projectname from Employeedetail full join Projectdetail
on Employeedetail.Employeeid=Projectdetail.Employeedetailid
order by Employeedetail.Firstname,Projectdetail.Projectname


----58
Select EmployeeID, FirstName, ProjectName from [EmployeeDetail] E INNER JOIN[ProjectDetail] P
ON E.EmployeeID = P.EmployeeDetailID
WHERE EmployeeID IN (SELECT EmployeeDetailID FROM [ProjectDetail] 
GROUP BY EmployeeDetailID 
HAVING COUNT(*) >1 )


----59





----60
select * from Employeedetail
cross join  Projectdetail











