SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLCashPostionKPI]  @UserDate datetime = NULL,  @TimeUnit varchar(10) = 'Period' as  declare   @CurrentCashPosition numeric(19,5),  @PreviousCashPosition numeric(19,5),  @LastYearCashPosition numeric(19,5)  SELECT  @CurrentCashPosition  = ROUND(CurrentBalance,0),  @PreviousCashPosition = ROUND(PreviousBalance,0),  @LastYearCashPosition = ROUND(LastYearBalance,0)  FROM   (SELECT * FROM GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'YTD', 1)) s1   select @CurrentCashPosition as CurrentCashPosition,   @PreviousCashPosition as PreviousCashPosition,  @LastYearCashPosition as LastYearCashPosition,  dbo.CalcPercentChange(@PreviousCashPosition, @CurrentCashPosition) as 'CurrPrevPercChange',  dbo.CalcPercentChange(@LastYearCashPosition, @CurrentCashPosition) as 'CurrLYPercChange'    
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLCashPostionKPI] TO [rpt_executive]
GO
