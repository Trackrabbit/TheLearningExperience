SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeUPRNewEmployeeDetailsMetric]  @I_dEndDate datetime = NULL,  @I_iPeriodMonths int   = NULL as  declare  @startDate datetime,   @endDate datetime   select  @I_dEndDate = DATEADD(HOUR, -DATEPART(HOUR, @I_dEndDate), @I_dEndDate) select  @I_dEndDate = DATEADD(MINUTE, -DATEPART(MINUTE, @I_dEndDate), @I_dEndDate) select  @I_dEndDate = DATEADD(SECOND, -DATEPART(SECOND, @I_dEndDate), @I_dEndDate) select  @I_dEndDate = DATEADD(MILLISECOND, -DATEPART(MILLISECOND, @I_dEndDate), @I_dEndDate)  select  @endDate = DATEADD(month, 1, @I_dEndDate) select  @endDate = DATEADD(day, -DAY(@endDate), @endDate) select  @startDate = DATEADD(MONTH, -@I_iPeriodMonths+1, DATEADD(day, -DAY(@I_dEndDate)+1, @I_dEndDate))  create table #NewEmployeeDetails (HireDate datetime not null,  EmployeeID char(15) not null,  LastName char(21) not null,   FirstName char(15) not null,  Department char(7)  not null,  JobTitle char(7)  not null,  LocationID char(15) not null)  insert into #NewEmployeeDetails  (HireDate,  EmployeeID,  LastName,  FirstName,  Department,  JobTitle,  LocationID) select  BENADJDATE as HireDate,  EMPLOYID as EmployeeID,  LASTNAME as LastName,  FRSTNAME as FirstName,  DEPRTMNT as Department,  JOBTITLE as JobTitle,  LOCATNID as LocationID from  dbo.UPR00100 with (NOLOCK) where  (BENADJDATE >= @startDate and BENADJDATE <= @endDate) union all select  STRTDATE as HireDate,  EMPLOYID as EmployeeID,  LASTNAME as LastName,  FRSTNAME as FirstName,  DEPRTMNT as Department,  JOBTITLE as JobTitle,  LOCATNID as LocationID from  dbo.UPR00100 with (NOLOCK) where  (year(BENADJDATE) = YEAR(0) and (STRTDATE >= @startDate and STRTDATE <= @endDate))  select  * from  #NewEmployeeDetails with (NOLOCK) order by  HireDate  drop table #NewEmployeeDetails    
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeDetailsMetric] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeDetailsMetric] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeDetailsMetric] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeUPRNewEmployeeDetailsMetric] TO [rpt_payroll]
GO
