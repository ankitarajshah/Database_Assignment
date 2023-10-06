use Table1
select * from tblEmployee

Create procedure spGetEmpByGenderAndDept 
  @Gender varchar(20),
  @Deptid int
as
Begin
	select name,gender,id from tblEmployee
	where gender=@Gender and Deptid=@Deptid
End

execute spGetEmpByGenderAndDept 'male',1
sp_helptext spGetEmpByGenderAndDept

create procedure spGetEmployeeCountByGender
@Gender varchar(20),
@EmployeeCount int output
As
begin
	select @EmployeeCount = COUNT(id) from tblEmployee
	where gender=@Gender
end

declare @totcount int
execute spGetEmployeeCountByGender 'female' ,@totcount output
print @totcount


