SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeIVInventoryTurnoverKPIDetail]  @UserDate datetime AS SELECT   CAST(  CASE WHEN d.CurrentBalance = 0 THEN 0 ELSE n.CurrentBalance / d.CurrentBalance END   AS Numeric(19,5)) AS 'CurrentBalance',  CAST(  CASE WHEN d.PreviousBalance = 0 THEN 0 ELSE n.PreviousBalance / d.PreviousBalance END   AS Numeric(19,5)) AS 'PreviousBalance',  n.OrderingDate,  n.Label FROM   GetGLAcctCatBalanceKPIDetail(@UserDate, 'NetChange', 33) AS n,  GetGLAcctCatBalanceKPIDetail (@UserDate, 'Average', 5) AS d WHERE  n.OrderingDate = d.OrderingDate   
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPIDetail] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPIDetail] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPIDetail] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeIVInventoryTurnoverKPIDetail] TO [rpt_operations manager]
GO
