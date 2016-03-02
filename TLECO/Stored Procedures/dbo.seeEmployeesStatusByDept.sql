SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[seeEmployeesStatusByDept]   @UserDate datetime  = NULL,   @MaxDepartments int as if @MaxDepartments <> 0   select a.[Department], a.[HR Status], COUNT(a.[Employee ID]) as TotalEmployees  from Employees a,   (select top (select @MaxDepartments) COUNT([Employee ID]) as TotalEmployees, [Department]    from Employees  where     ([Start Date] <= @UserDate and [Inactive] = 'No')     group by [Department]    order by TotalEmployees desc, [Department]) b   where    (a.[Start Date] <= @UserDate and a.[Inactive] = 'No') and    a.[Department] = b.[Department]  group by a.[Department], a.[HR Status]  order by TotalEmployees desc, a.[Department] else   select a.[Department], a.[HR Status], COUNT(a.[Employee ID]) as TotalEmployees  from Employees a,   (select COUNT([Employee ID]) as TotalEmployees, [Department]    from Employees    group by [Department]) b   where    (a.[Start Date] <= @UserDate and a.[Inactive] = 'No')  and    a.[Department] = b.[Department]  group by a.[Department], a.[HR Status]  order by TotalEmployees desc, a.[Department]          
GO
GRANT EXECUTE ON  [dbo].[seeEmployeesStatusByDept] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeesStatusByDept] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeesStatusByDept] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeesStatusByDept] TO [rpt_payroll]
GO
