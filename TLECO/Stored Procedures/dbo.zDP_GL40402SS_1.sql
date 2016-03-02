SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40402SS_1] (@Reconciliation_Number int, @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  Reconciliation_Number, SQNCLINE, MODULE1, ACTINDX, DEX_ROW_ID FROM .GL40402 WHERE Reconciliation_Number = @Reconciliation_Number AND SQNCLINE = @SQNCLINE ORDER BY Reconciliation_Number ASC, SQNCLINE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40402SS_1] TO [DYNGRP]
GO
