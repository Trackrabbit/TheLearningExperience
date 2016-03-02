SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLAPDaysOutstandingKPI]  @UserDate datetime = NULL,  @TimeUnit varchar(10) = 'Period' as  declare   @CurrentAPDaysOutstanding numeric(19,5),  @PreviousAPDaysOutstanding numeric(19,5),  @LastYearAPDaysOutstanding numeric(19,5),  @CurrentBalancePayables numeric(19,5),  @PreviousBalancePayables numeric(19,5),  @LastYearBalancePayables numeric(19,5),  @CurrentBalanceCOGS numeric(19,5),  @PreviousBalanceCOGS numeric(19,5),  @LastYearBalanceCOGS numeric(19,5),  @SDCurrent datetime,  @EDCurrent datetime,  @SDPrevious datetime,  @EDPrevious datetime,  @SDLastYear datetime,  @EDLastYear datetime,  @CurrentDays int,  @PreviousDays int,  @LastYearDays int  SELECT  @SDCurrent = SDCurrent,  @EDCurrent = EDCurrent,   @SDPrevious = SDPrevious,  @EDPrevious = EDPrevious,   @SDLastYear = SDLastYear,  @EDLastYear = EDLastYear FROM   GetKPIDates(@UserDate,'Fiscal',@TimeUnit) SELECT @CurrentDays = DATEDIFF(day, @SDCurrent , @EDCurrent) + 1 SELECT @PreviousDays = DATEDIFF(day, @SDPrevious , @EDPrevious) + 1 SELECT @LastYearDays = DATEDIFF(day, @SDLastYear , @EDLastYear) + 1  SELECT  @CurrentBalancePayables = sum(CurrentBalance),  @PreviousBalancePayables = sum(PreviousBalance),  @LastYearBalancePayables = sum(LastYearBalance) FROM   GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'YTD', 13)   SELECT  @CurrentBalanceCOGS = sum(CurrentBalance),  @PreviousBalanceCOGS = sum(PreviousBalance),  @LastYearBalanceCOGS = sum(LastYearBalance)  FROM   GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 33)   select @CurrentAPDaysOutstanding =   CASE   WHEN @CurrentBalanceCOGS = 0 THEN 0   ELSE ROUND((@CurrentBalancePayables / @CurrentBalanceCOGS) * @CurrentDays,2)  END  select @PreviousAPDaysOutstanding =   CASE   WHEN @PreviousBalanceCOGS = 0 THEN 0  ELSE ROUND((@PreviousBalancePayables / @PreviousBalanceCOGS) * @PreviousDays,2)  END  select @LastYearAPDaysOutstanding =   CASE   WHEN @LastYearBalanceCOGS = 0 THEN 0  ELSE ROUND((@LastYearBalancePayables / @LastYearBalanceCOGS) * @LastYearDays,2)  END   select @CurrentAPDaysOutstanding as CurrentAPDaysOutstanding,   @PreviousAPDaysOutstanding as PreviousAPDaysOutstanding,  @LastYearAPDaysOutstanding as LastYearAPDaysOutstanding,  dbo.CalcPercentChange(@PreviousAPDaysOutstanding, @CurrentAPDaysOutstanding) as 'CurrPrevPercChange',  dbo.CalcPercentChange(@LastYearAPDaysOutstanding, @CurrentAPDaysOutstanding) as 'CurrLYPercChange'   
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPI] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPI] TO [rpt_executive]
GO
