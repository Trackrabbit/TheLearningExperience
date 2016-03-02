SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeNewEmployeesKPI]  @UserDate datetime  = NULL,  @TimeUnit varchar(10)  = 'Month' as  declare   @sdcurrent datetime,  @edcurrent datetime,  @sdprevious datetime,  @edprevious datetime,  @sdlastyear datetime,  @edlastyear datetime,  @CurrentNewEmp int,  @PreviousNewEmp int,  @LYNewEmp int  SELECT   @sdcurrent = SDCurrent,   @edcurrent = EDCurrent,   @sdprevious = SDPrevious,   @edprevious = EDPrevious,   @sdlastyear = SDLastYear,   @edlastyear = EDLastYear  FROM   dbo.GetKPIDates(@UserDate, 'Gregorian', @TimeUnit)   select @CurrentNewEmp =   (select isnull((select COUNT(EMPLOYID) from UPR00100 where STRTDATE between @sdcurrent and @edcurrent),0)) select @PreviousNewEmp =  (select isnull((select COUNT(EMPLOYID) from UPR00100 where STRTDATE between @sdprevious and @edprevious),0)) select @LYNewEmp =   (select isnull((select COUNT(EMPLOYID) from UPR00100 where STRTDATE between @sdlastyear and @edlastyear),0))  select @CurrentNewEmp as CurrentNewEmployees, @PreviousNewEmp as PreviousNewEmployees, @LYNewEmp as LastYearNewEmployees,  dbo.CalcPercentChange(@PreviousNewEmp, @CurrentNewEmp) as CurrentPercentChange,  dbo.CalcPercentChange(@LYNewEmp, @CurrentNewEmp) as LastYearPercentChange    
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesKPI] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesKPI] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeNewEmployeesKPI] TO [rpt_payroll]
GO
