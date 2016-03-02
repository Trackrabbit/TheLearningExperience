SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00407SS_1] (@aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaTrxDimID, aaAllowAdjustment, aaCodeReqdDrgAdj, DEX_ROW_ID FROM .AAG00407 WHERE aaTrxDimID = @aaTrxDimID ORDER BY aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00407SS_1] TO [DYNGRP]
GO
