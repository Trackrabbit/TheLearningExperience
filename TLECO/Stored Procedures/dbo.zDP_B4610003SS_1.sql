SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610003SS_1] (@BSSI_SICCode char(31)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_SICCode, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4610003 WHERE BSSI_SICCode = @BSSI_SICCode ORDER BY BSSI_SICCode ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610003SS_1] TO [DYNGRP]
GO