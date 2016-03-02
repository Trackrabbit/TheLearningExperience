SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133306N_1] (@BS int, @BSSI_Identifier char(31), @BSSI_Identifier_RS char(31), @BSSI_Identifier_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Identifier_RS IS NULL BEGIN SELECT TOP 25  BSSI_Identifier, BSSI_Description, DEX_ROW_ID FROM .B7133306 WHERE ( BSSI_Identifier > @BSSI_Identifier ) ORDER BY BSSI_Identifier ASC END ELSE IF @BSSI_Identifier_RS = @BSSI_Identifier_RE BEGIN SELECT TOP 25  BSSI_Identifier, BSSI_Description, DEX_ROW_ID FROM .B7133306 WHERE BSSI_Identifier = @BSSI_Identifier_RS AND ( BSSI_Identifier > @BSSI_Identifier ) ORDER BY BSSI_Identifier ASC END ELSE BEGIN SELECT TOP 25  BSSI_Identifier, BSSI_Description, DEX_ROW_ID FROM .B7133306 WHERE BSSI_Identifier BETWEEN @BSSI_Identifier_RS AND @BSSI_Identifier_RE AND ( BSSI_Identifier > @BSSI_Identifier ) ORDER BY BSSI_Identifier ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133306N_1] TO [DYNGRP]
GO
