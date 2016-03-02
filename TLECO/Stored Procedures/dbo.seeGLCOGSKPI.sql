SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeGLCOGSKPI]  @UserDate datetime,  @TimeUnit varchar(10) = 'Period' AS SELECT   Curr as 'CurrentBalance',  Prev as 'PreviousBalance',  LastYear as 'LastYearBalance',  dbo.CalcPercentChange(Prev, Curr) as 'CurrPrevPercChange',  dbo.CalcPercentChange(LastYear, Curr) as 'CurrLYPercChange' FROM  (SELECT   CAST(CurrentBalance AS Numeric(19, 0)) as 'Curr',   CAST(PreviousBalance AS Numeric(19, 0)) as 'Prev',   CAST(LastYearBalance AS Numeric(19, 0)) as 'LastYear'  FROM   GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 33)) s1   
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLCOGSKPI] TO [rpt_executive]
GO
