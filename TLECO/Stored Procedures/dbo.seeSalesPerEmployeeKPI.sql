SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSalesPerEmployeeKPI]  @UserDate datetime  = NULL,  @TimeUnit varchar(10)  = 'Period' as  declare   @CurrentEmployeeCount int,  @PreviousEmployeeCount int,  @LastYearEmployeeCount int,   @sdcurrent datetime,  @edcurrent datetime,  @sdprevious datetime,  @edprevious datetime,  @sdlastyear datetime,  @edlastyear datetime  SELECT   @sdcurrent = SDCurrent,   @edcurrent = EDCurrent,   @sdprevious = SDPrevious,   @edprevious = EDPrevious,   @sdlastyear = SDLastYear,   @edlastyear = EDLastYear  FROM   dbo.GetKPIDates(@UserDate, 'Fiscal', @TimeUnit)   create table #AllBalances  (  AcctCat int,   CurrentBalance numeric (19,5),   PreviousBalance numeric (19,5),   LastYearBalance numeric(19,5) )  INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 31)  select @CurrentEmployeeCount =   (select COUNT(EMPLOYID) from UPR00100 where INACTIVE = 0 and STRTDATE <= @UserDate) +  (select COUNT(EMPLOYID) from UPR00100 where STRTDATE <= @UserDate and INACTIVE = 1 and DEMPINAC > @sdcurrent)  select @PreviousEmployeeCount =   (select COUNT(EMPLOYID) from UPR00100 where INACTIVE = 0 and STRTDATE <= @edprevious ) +  (select COUNT(EMPLOYID) from UPR00100 where STRTDATE <= @edprevious and INACTIVE = 1 and DEMPINAC > @sdprevious)  select @LastYearEmployeeCount =   (select COUNT(EMPLOYID) from UPR00100 where INACTIVE = 0 and STRTDATE <= @edlastyear ) +  (select COUNT(EMPLOYID) from UPR00100 where STRTDATE <= @edlastyear and INACTIVE = 1 and DEMPINAC > @sdlastyear)  select   case when @CurrentEmployeeCount = 0 then 0  else  isnull(round((CurrentBalance/@CurrentEmployeeCount),0) ,0)  end as CurrentSalesPerEmployee,  case when @PreviousEmployeeCount = 0 then 0  else  isnull(round((PreviousBalance/@PreviousEmployeeCount),0),0)  end as PreviousSalesPerEmployee,  case when @LastYearEmployeeCount = 0 then 0   else  isnull(round((LastYearBalance/@LastYearEmployeeCount),0) ,0)  end as LastYearSalesPerEmployee,  case when @CurrentEmployeeCount = 0 or @PreviousEmployeeCount = 0 then '0'  else  dbo.CalcPercentChange(round((PreviousBalance/@PreviousEmployeeCount),0), round((CurrentBalance/@CurrentEmployeeCount),0))   end as 'CurrPrevPercChange',   case when @CurrentEmployeeCount = 0 or @LastYearEmployeeCount = 0 then '0'  else  dbo.CalcPercentChange(round((LastYearBalance/@LastYearEmployeeCount),0), round((CurrentBalance/@CurrentEmployeeCount),0))  end as 'CurrLYPercChange'  from #AllBalances    
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeKPI] TO [rpt_executive]
GO
