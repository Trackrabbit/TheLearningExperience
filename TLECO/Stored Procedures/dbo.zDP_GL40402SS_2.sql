SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40402SS_2] (@ACTINDX int, @Reconciliation_Number int, @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  Reconciliation_Number, SQNCLINE, MODULE1, ACTINDX, DEX_ROW_ID FROM .GL40402 WHERE ACTINDX = @ACTINDX AND Reconciliation_Number = @Reconciliation_Number AND SQNCLINE = @SQNCLINE ORDER BY ACTINDX ASC, Reconciliation_Number ASC, SQNCLINE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40402SS_2] TO [DYNGRP]
GO
