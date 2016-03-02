SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30500SS_2] (@Pay_Schedule char(15), @YEAR1 smallint, @PERIODID smallint, @EMPLOYID char(15)) AS  set nocount on SELECT TOP 1  EMPLOYID, Pay_Schedule, YEAR1, PERIODID, Workflow_Status, DEX_ROW_ID FROM .UPR30500 WHERE Pay_Schedule = @Pay_Schedule AND YEAR1 = @YEAR1 AND PERIODID = @PERIODID AND EMPLOYID = @EMPLOYID ORDER BY Pay_Schedule ASC, YEAR1 ASC, PERIODID ASC, EMPLOYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30500SS_2] TO [DYNGRP]
GO
