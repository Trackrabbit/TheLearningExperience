SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600001SS_1] (@BSSI_WingID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_WingID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600001 WHERE BSSI_WingID = @BSSI_WingID ORDER BY BSSI_WingID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600001SS_1] TO [DYNGRP]
GO
