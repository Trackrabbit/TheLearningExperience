SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLTotalRevenueKPI]  @UserDate datetime = NULL,  @TimeUnit varchar(10) = 'Period' as  declare   @CurrentBalanceRevenue numeric(19,5),  @PreviousBalanceRevenue numeric(19,5),  @LastYearBalanceRevenue numeric(19,5)  SELECT   @CurrentBalanceRevenue = ROUND(sum(CurrentBalance),0),  @PreviousBalanceRevenue = ROUND(sum(PreviousBalance),0),  @LastYearBalanceRevenue = ROUND(sum(LastYearBalance),0)  FROM   (SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 31) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 43) UNION  SELECT   AcctCat,  CurrentBalance * -1,  PreviousBalance * -1,  LastYearBalance * -1  FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 32) UNION  SELECT   AcctCat,  case when CurrentBalance > 0 then 0 Else CurrentBalance * -1 End,  case when PreviousBalance > 0 then 0 Else PreviousBalance * -1 End,  case when LastYearBalance > 0 then 0 Else LastYearBalance * -1 End  FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 46)) s1  select @CurrentBalanceRevenue as CurrentRevenue,  @PreviousBalanceRevenue as PreviousRevenue,  @LastYearBalanceRevenue as LastYearRevenue,  dbo.CalcPercentChange(@PreviousBalanceRevenue, @CurrentBalanceRevenue) as 'CurrPrevPercChange',  dbo.CalcPercentChange(@LastYearBalanceRevenue, @CurrentBalanceRevenue) as 'CurrLYPercChange'    
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLTotalRevenueKPI] TO [rpt_executive]
GO
