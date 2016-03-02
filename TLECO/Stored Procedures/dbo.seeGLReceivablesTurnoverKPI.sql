SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLReceivablesTurnoverKPI]   @UserDate datetime = NULL,  @TimeUnit varchar(10) = 'Period' as  SELECT  CurrentRT,  PreviousRT,  LastYearRT,   dbo.CalcPercentChange(PreviousRT, CurrentRT) as 'CurrPrevPercChange',  dbo.CalcPercentChange(LastYearRT, CurrentRT) as 'CurrLYPercChange' FROM  (SELECT   CAST(  CASE WHEN d.CurrentBalance = 0 THEN 0 ELSE (n1.CurrentBalance - n2.CurrentBalance) / d.CurrentBalance END   AS Numeric(19,2)) AS 'CurrentRT',  CAST(  CASE WHEN d.PreviousBalance = 0 THEN 0 ELSE (n1.PreviousBalance - n2.PreviousBalance) / d.PreviousBalance END   AS Numeric(19,2)) AS 'PreviousRT',  CAST(  CASE WHEN d.LastYearBalance = 0 THEN 0 ELSE (n1.LastYearBalance - n2.LastYearBalance) / d.LastYearBalance END   AS Numeric(19,2)) AS 'LastYearRT'  FROM   GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'NetChange', 31) AS n1,  GetGLAcctCatBalanceKPI(ISNULL(@UserDate,GetDate()), @TimeUnit, 'NetChange', 32) AS n2,  GetGLAcctCatBalanceKPI (ISNULL(@UserDate,GetDate()), @TimeUnit, 'Average', 3) AS d) sub   
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPI] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPI] TO [rpt_executive]
GO
