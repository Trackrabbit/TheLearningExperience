SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[seeGLReceivablesTurnoverKPIDetail]  @UserDate datetime = NULL as  SELECT   CAST(  CASE WHEN d.CurrentBalance = 0 THEN 0 ELSE (n1.CurrentBalance - n2.CurrentBalance) / d.CurrentBalance END   AS Numeric(19,5)) AS 'CurrentBalance',  CAST(  CASE WHEN d.PreviousBalance = 0 THEN 0 ELSE (n1.PreviousBalance - n2.PreviousBalance) / d.PreviousBalance END   AS Numeric(19,5)) AS 'PreviousBalance',  n1.OrderingDate,  n1.Label FROM   GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 31) AS n1,  GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 32) AS n2,  GetGLAcctCatBalanceKPIDetail(@UserDate, 'Average', 3) AS d WHERE n1.OrderingDate = d.OrderingDate and  n2.OrderingDate = d.OrderingDate    
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPIDetail] TO [rpt_accounting manager]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPIDetail] TO [rpt_accounts receivable coordinator]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPIDetail] TO [rpt_bookkeeper]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPIDetail] TO [rpt_certified accountant]
GO
GRANT EXECUTE ON  [dbo].[seeGLReceivablesTurnoverKPIDetail] TO [rpt_executive]
GO
