SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133306SS_1] (@BSSI_Identifier char(31)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Identifier, BSSI_Description, DEX_ROW_ID FROM .B7133306 WHERE BSSI_Identifier = @BSSI_Identifier ORDER BY BSSI_Identifier ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133306SS_1] TO [DYNGRP]
GO
