SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeActiveEmployeeTypeByDeptDetail]   @UserDate datetime  = NULL,   @Department varchar(18)  = '',   @MaxDepartments int    as if @MaxDepartments > 0 and @Department = '' begin   select a.[Department], a.[Type of Employment], a.[Employee Class], a.[Division Code], a.[Location ID],      a.[Supervisor Code], a.[Start Date],a.[Employee ID] , a.[Last Name], a.[First Name], a.[Address 1],       a.[Address 2], a.[City], a.[State], a.[Zip Code]    from Employees a,    (select top (select @MaxDepartments) COUNT([Employee ID]) as EmpCount, Department     from Employees     group by Department     order by EmpCount desc, Department) b   where (a.Inactive = 'No' and a.[Start Date]<= dbo.GetDateStripTime(@UserDate) or      (a.[Start Date] <= dbo.GetDateStripTime(@UserDate) and a.Inactive = 'Yes' and a.[Date Employee Inactivated] > dbo.GetDateStripTime(@UserDate))) and        a.Department = b.Department  end else  begin  if @Department = ''   select [Department], [Type of Employment], [Employee Class], [Division Code], [Location ID],      [Supervisor Code], [Start Date],[Employee ID] , [Last Name], [First Name], [Address 1],       [Address 2], [City], [State], [Zip Code]    from Employees    where (Inactive = 'No' and [Start Date]<= dbo.GetDateStripTime(@UserDate)) or      ([Start Date] <= dbo.GetDateStripTime(@UserDate) and Inactive = 'Yes' and [Date Employee Inactivated] > dbo.GetDateStripTime(@UserDate))  else    select [Department], [Type of Employment], [Employee Class], [Division Code],  [Location ID],      [Supervisor Code], [Start Date],[Employee ID] , [Last Name], [First Name], [Address 1],       [Address 2], [City], [State], [Zip Code]    from Employees    where (Inactive = 'No' and [Start Date]<= dbo.GetDateStripTime(@UserDate) or      ([Start Date] <= dbo.GetDateStripTime(@UserDate) and Inactive = 'Yes' and [Date Employee Inactivated] > dbo.GetDateStripTime(@UserDate)))and        Department = @Department end          
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDeptDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDeptDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDeptDetail] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDeptDetail] TO [rpt_payroll]
GO
