SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeEmployeeTurnoverDetailKPI]  @UserDate datetime  = NULL as  set dateformat ymd  declare   @CurrentBalance numeric(19,5),  @PreviousBalance numeric(19,5),  @LastYearBalance numeric(19,5),  @CurrentEmployeeCount int,  @PreviousEmployeeCount int  DECLARE @KpiDetailDates TABLE (  StartDate datetime,  EndDate datetime,  DateLabel varchar(21),  CurrPrevType int,  TotalEmployees numeric(19,5),  InactiveEmployees numeric(19,5),  CurrentET numeric(19,5),  PreviousET numeric(19,5) )  INSERT INTO @KpiDetailDates  SELECT   StartDate, EndDate, DateLabel, CurrPrevType, 0.0, 0.0, NULL, 0.0  FROM   GetKPIDetailDates(@UserDate, 'Gregorian')  update @KpiDetailDates set TotalEmployees =   (select COUNT(EMPLOYID) from UPR00100 where (INACTIVE = 0 and STRTDATE <= EndDate) or  ((STRTDATE <= EndDate) AND (INACTIVE = 1) AND (DEMPINAC >= StartDate)))  update @KpiDetailDates set InactiveEmployees =   (select COUNT(EMPLOYID) from UPR00100 where INACTIVE = 1 and DEMPINAC between StartDate and EndDate and STRTDATE < EndDate)  update @KpiDetailDates set  CurrentET =   case when TotalEmployees = 0 then 0.0  else   InactiveEmployees/TotalEmployees  end where CurrPrevType = 1   update @KpiDetailDates set  PreviousET =   case when TotalEmployees = 0 then 0.0  else   InactiveEmployees/TotalEmployees  end where CurrPrevType = 0  select CurrentET, PreviousET, StartDate, DateLabel from @KpiDetailDates     
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverDetailKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverDetailKPI] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverDetailKPI] TO [rpt_human resource administrator]
GO
GRANT EXECUTE ON  [dbo].[seeEmployeeTurnoverDetailKPI] TO [rpt_payroll]
GO
