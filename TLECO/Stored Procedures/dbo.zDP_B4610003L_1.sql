SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610003L_1] (@BSSI_SICCode_RS char(31), @BSSI_SICCode_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_SICCode_RS IS NULL BEGIN SELECT TOP 25  BSSI_SICCode, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4610003 ORDER BY BSSI_SICCode DESC END ELSE IF @BSSI_SICCode_RS = @BSSI_SICCode_RE BEGIN SELECT TOP 25  BSSI_SICCode, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4610003 WHERE BSSI_SICCode = @BSSI_SICCode_RS ORDER BY BSSI_SICCode DESC END ELSE BEGIN SELECT TOP 25  BSSI_SICCode, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4610003 WHERE BSSI_SICCode BETWEEN @BSSI_SICCode_RS AND @BSSI_SICCode_RE ORDER BY BSSI_SICCode DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610003L_1] TO [DYNGRP]
GO
