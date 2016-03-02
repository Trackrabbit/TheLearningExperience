SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeSalesPerEmployeeDetailKPI]  @UserDate datetime  = NULL as  declare   @CurrentBalance numeric(19,5),  @PreviousBalance numeric(19,5),  @LastYearBalance numeric(19,5),  @CurrentEmployeeCount int,  @PreviousEmployeeCount int  create table #AllBalances  (  AcctCat int,   CurrentBalance Decimal (19,5),   PreviousBalance Decimal (19,5),   OrderingDate datetime,   Label varchar(21) )  DECLARE @KpiDetailDates TABLE (  StartDate datetime,  EndDate datetime,  DateLabel varchar(21),  CurrPrevType int,  CurrentNumEmployees int,  PreviousNumEmployees int )  INSERT INTO @KpiDetailDates  SELECT   StartDate, EndDate, DateLabel, CurrPrevType, NULL, NULL  FROM   GetKPIDetailDates(@UserDate, 'Fiscal')  INSERT INTO #AllBalances  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate,  'NetChange', 31)  update @KpiDetailDates set CurrentNumEmployees =   (select COUNT(EMPLOYID) from UPR00100 where INACTIVE = 0 and STRTDATE < EndDate) +  (select COUNT(EMPLOYID) from UPR00100 where STRTDATE <= EndDate and INACTIVE = 1 and DEMPINAC >StartDate) where CurrPrevType = 1  update @KpiDetailDates set PreviousNumEmployees =   (select COUNT(EMPLOYID) from UPR00100 where INACTIVE = 0 and STRTDATE < EndDate) +  (select COUNT(EMPLOYID) from UPR00100 where STRTDATE <= EndDate and INACTIVE = 1 and DEMPINAC >StartDate) where CurrPrevType = 0  select  case   when b.CurrentNumEmployees = 0 then 0.0  else  a.CurrentAcct31/b.CurrentNumEmployees  end as CurrentSalesPerEmployee, case   when b.PreviousNumEmployees = 0 then 0.0  else  a.PreviousAcct31/b.PreviousNumEmployees  end as PreviousSalesPerEmployee,   a.OrderingDate, a.Label from   (select sum(CurrentBalance) as CurrentAcct31, sum(PreviousBalance) as PreviousAcct31, OrderingDate, Label from #AllBalances where AcctCat = 31 group by OrderingDate, Label) a,  @KpiDetailDates b where a.Label = b.DateLabel order by a.OrderingDate    
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeDetailKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeDetailKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeDetailKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeDetailKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeSalesPerEmployeeDetailKPI] TO [rpt_executive]
GO
