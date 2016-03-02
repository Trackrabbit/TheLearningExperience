SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeNewEmployeesDetailKPI]  @UserDate datetime  = NULL as  declare   @CurrentBalance numeric(19,5),  @PreviousBalance numeric(19,5),  @LastYearBalance numeric(19,5),  @CurrentEmployeeCount int,  @PreviousEmployeeCount int  DECLARE @KpiDetailDates TABLE (  StartDate datetime,  EndDate datetime,  DateLabel varchar(21),  CurrPrevType int,  NewEmployees int )  INSERT INTO @KpiDetailDates  SELECT   StartDate, EndDate, DateLabel, CurrPrevType, (select COUNT(EMPLOYID) from UPR00100 where STRTDATE between x.StartDate and x.EndDate)  FROM   GetKPIDetailDates(@UserDate, 'Gregorian') x  select   (select NewEmployees from @KpiDetailDates where CurrPrevType = 0 and StartDate = x.StartDate ) as NewEmployeesPrevious,   (select NewEmployees from @KpiDetailDates where CurrPrevType = 1 and StartDate = x.StartDate) as NewEmployeesCurrent,  StartDate as StartDate,  DateLabel as Label from @KpiDetailDates x group by x.StartDate, x.DateLabel order by x.StartDate    
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesDetailKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesDetailKPI] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesDetailKPI] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesDetailKPI] TO [rpt_payroll]
GO
