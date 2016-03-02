SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600002SS_1] (@BSSI_FloorID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_FloorID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600002 WHERE BSSI_FloorID = @BSSI_FloorID ORDER BY BSSI_FloorID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600002SS_1] TO [DYNGRP]
GO