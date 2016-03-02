SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLAPDaysOutstandingKPIDetail]  @UserDate datetime = NULL as  create table #Payables (  CurrentBalance Numeric(19,5),  PreviousBalance Numeric(19,5),  OrderingDate datetime,  Label varchar(30) )  create table #COGS (  CurrentBalance Numeric(19,5),  PreviousBalance Numeric(19,5),  OrderingDate datetime,  Label varchar(30),  CurrentDays int,  PreviousDays int )  INSERT INTO #Payables SELECT  sum(CurrentBalance),  sum(PreviousBalance),  OrderingDate,  Label FROM   (SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'YTD', 13)) s1 GROUP BY OrderingDate, Label  INSERT INTO #COGS SELECT  sum(CurrentBalance),  sum(PreviousBalance),  OrderingDate,  Label,  Null,  Null FROM   (SELECT * FROM GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 33)) s2 GROUP BY OrderingDate, Label  Update #COGS  set CurrentDays = DATEDIFF(day, StartDate , EndDate) + 1 FROM   (Select * From GetKPIDetailDates(@UserDate,'Fiscal') where CurrPrevType = 1) s3 WHERE  Label= s3.DateLabel Update #COGS  set PreviousDays = DATEDIFF(day, StartDate , EndDate) + 1 FROM   (Select * From GetKPIDetailDates(@UserDate,'Fiscal') where CurrPrevType = 0) s4 WHERE  Label= s4.DateLabel  SELECT   CAST(  CASE WHEN d.CurrentBalance = 0 THEN 0 ELSE (n.CurrentBalance / d.CurrentBalance) * d.CurrentDays  END   AS Numeric(19,5)) AS 'CurrentBalance',  CAST(  CASE WHEN d.PreviousBalance = 0 THEN 0 ELSE (n.PreviousBalance / d.PreviousBalance) * d.PreviousDays END   AS Numeric(19,5)) AS 'PreviousBalance',  n.OrderingDate,  n.Label FROM   #Payables n,  #COGS d WHERE  n.OrderingDate = d.OrderingDate   
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPIDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPIDetail] TO [rpt_accounts payable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPIDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPIDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLAPDaysOutstandingKPIDetail] TO [rpt_executive]
GO
