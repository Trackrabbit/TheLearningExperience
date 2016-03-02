SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40402SS_3] (@MODULE1 smallint, @Reconciliation_Number int, @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  Reconciliation_Number, SQNCLINE, MODULE1, ACTINDX, DEX_ROW_ID FROM .GL40402 WHERE MODULE1 = @MODULE1 AND Reconciliation_Number = @Reconciliation_Number AND SQNCLINE = @SQNCLINE ORDER BY MODULE1 ASC, Reconciliation_Number ASC, SQNCLINE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40402SS_3] TO [DYNGRP]
GO
