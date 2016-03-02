SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLQuickRatioDetailKPI]   @UserDate datetime = NULL as  create table #Assets (  CurrentBalance Numeric(19,5),  PreviousBalance Numeric(19,5),  OrderingDate datetime,  Label varchar(30) )  create table #Liabilities (  CurrentBalance Numeric(19,5),  PreviousBalance Numeric(19,5),  OrderingDate datetime,  Label varchar(30) )  INSERT INTO #Assets SELECT  sum(CurrentBalance),  sum(PreviousBalance),  OrderingDate,  Label FROM   (SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 1) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 2) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 3) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 4)) s1 GROUP BY OrderingDate, Label  INSERT INTO #Liabilities SELECT  sum(CurrentBalance),  sum(PreviousBalance),  OrderingDate,  Label FROM   (SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 13) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 14) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 15) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 16) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 17) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 18) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 19) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 20) UNION  SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 21)) s2 GROUP BY OrderingDate, Label  SELECT   CAST(  CASE WHEN d.CurrentBalance = 0 THEN 0 ELSE n.CurrentBalance / d.CurrentBalance END   AS Numeric(19,5)) AS 'CurrentBalance',  CAST(  CASE WHEN d.PreviousBalance = 0 THEN 0 ELSE n.PreviousBalance / d.PreviousBalance END   AS Numeric(19,5)) AS 'PreviousBalance',  n.OrderingDate,  n.Label FROM   #Assets n,  #Liabilities d WHERE  n.OrderingDate = d.OrderingDate   
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioDetailKPI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioDetailKPI] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioDetailKPI] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioDetailKPI] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLQuickRatioDetailKPI] TO [rpt_executive]
GO
