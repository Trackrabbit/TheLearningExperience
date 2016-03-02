SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeActiveEmployeeTypeByDept]   @UserDate datetime  = NULL,   @MaxDepartments int   = 10 as if @MaxDepartments > 0   select COUNT([Employee ID]) as ActiveEmployees, a.[Department], [Type of Employment]   from Employees a,   (select top (select @MaxDepartments) COUNT([Employee ID]) as ActiveEmployees, Department     from Employees     where ([Inactive] = 'No' and [Start Date] <= dbo.GetDateStripTime(@UserDate) ) or        ([Start Date] <= dbo.GetDateStripTime(@UserDate)  and Inactive = 'Yes' and          [Date Employee Inactivated] > dbo.GetDateStripTime(@UserDate) )      group by Department     order by ActiveEmployees desc, Department) b   where (([Inactive] = 'No' and [Start Date] <= dbo.GetDateStripTime(@UserDate) ) or    ([Start Date] <= dbo.GetDateStripTime(@UserDate)  and Inactive = 'Yes' and      [Date Employee Inactivated] > dbo.GetDateStripTime(@UserDate) )) and     a.Department = b.Department   group by a.[Department],[Type of Employment], b.ActiveEmployees     order by ActiveEmployees desc else if @MaxDepartments = 0  select COUNT([Employee ID]) as ActiveEmployees, [Department], [Type of Employment]   from Employees    where ([Inactive] = 'No' and [Start Date] <= dbo.GetDateStripTime(@UserDate) ) or   ([Start Date] <= dbo.GetDateStripTime(@UserDate)  and Inactive = 'Yes' and [Date Employee Inactivated] > dbo.GetDateStripTime(@UserDate) )   group by [Type of Employment], [Department]    order by ActiveEmployees desc          
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDept] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDept] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDept] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeActiveEmployeeTypeByDept] TO [rpt_payroll]
GO
