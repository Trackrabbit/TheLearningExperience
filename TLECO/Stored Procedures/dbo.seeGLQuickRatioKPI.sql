SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLQuickRatioKPI]   @UserDate datetime = NULL,  @TimeUnit varchar(10) = 'Period' as  declare   @CurrentQuickRatio numeric(19,5),  @PreviousQuickRatio numeric(19,5),  @LastYearQuickRatio numeric(19,5),  @CurrentBalanceAssets numeric(19,5),  @PreviousBalanceAssets numeric(19,5),  @LastYearBalanceAssets numeric(19,5),  @CurrentBalanceLiabilities numeric(19,5),  @PreviousBalanceLiabilities numeric(19,5),  @LastYearBalanceLiabilities numeric(19,5)  SELECT  @CurrentBalanceAssets =  sum(CurrentBalance),  @PreviousBalanceAssets = sum(PreviousBalance),  @LastYearBalanceAssets = sum(LastYearBalance) FROM   (SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 1) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 2) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 3) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 4)) s1  SELECT   @CurrentBalanceLiabilities = sum(CurrentBalance),  @PreviousBalanceLiabilities = sum(PreviousBalance),  @LastYearBalanceLiabilities = sum(LastYearBalance)  FROM   (SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 13) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 14) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 15) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 16) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 17) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 18) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 19) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 20) UNION  SELECT * FROM GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'YTD', 21)) s2  select @CurrentQuickRatio =  CASE   WHEN @CurrentBalanceLiabilities = 0 THEN 0   ELSE ROUND(@CurrentBalanceAssets / @CurrentBalanceLiabilities,2)  END  select @PreviousQuickRatio =   CASE   WHEN @PreviousBalanceLiabilities = 0 THEN 0  ELSE ROUND(@PreviousBalanceAssets / @PreviousBalanceLiabilities,2)  END  select @LastYearQuickRatio =   CASE   WHEN @LastYearBalanceLiabilities = 0 THEN 0  ELSE ROUND(@LastYearBalanceAssets / @LastYearBalanceLiabilities,2)  END   select @CurrentQuickRatio as CurrentQuickRatio,   @PreviousQuickRatio as PreviousQuickRatio,  @LastYearQuickRatio as LastYearQuickRatio,  dbo.CalcPercentChange(@PreviousQuickRatio, @CurrentQuickRatio) as 'CurrPrevPercChange',  dbo.CalcPercentChange(@LastYearQuickRatio, @CurrentQuickRatio) as 'CurrLYPercChange'    
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioKPI] TO [rpt_executive]
GO