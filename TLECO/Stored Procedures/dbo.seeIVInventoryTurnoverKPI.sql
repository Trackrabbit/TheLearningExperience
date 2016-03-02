SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeIVInventoryTurnoverKPI]  @UserDate datetime,  @TimeUnit varchar(10) = 'Period' AS SELECT  Curr as 'CurrentBalance',   Prev as 'PreviousBalance',  LastYear as 'LastYearBalance',  dbo.CalcPercentChange(Prev, Curr) as 'CurrPrevPercChange',  dbo.CalcPercentChange(LastYear, Curr) as 'CurrLYPercChange' FROM  (SELECT   CAST(  CASE WHEN d.CurrentBalance = 0 THEN 0 ELSE n.CurrentBalance / d.CurrentBalance END   AS Numeric(19,2)) AS 'Curr',  CAST(  CASE WHEN d.PreviousBalance = 0 THEN 0 ELSE n.PreviousBalance / d.PreviousBalance END   AS Numeric(19,2)) AS 'Prev',  CAST(  CASE WHEN d.LastYearBalance = 0 THEN 0 ELSE n.LastYearBalance / d.LastYearBalance END   AS Numeric(19,2)) AS 'LastYear'  FROM   GetGLAcctCatBalanceKPI(@UserDate, @TimeUnit, 'NetChange', 33) AS n,  GetGLAcctCatBalanceKPI (@UserDate, @TimeUnit, 'Average', 5) AS d) sub   
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPI] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPI] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPI] TO [rpt_operations manager]
GO
