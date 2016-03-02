SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100910N_1] (@BS int, @BSSI_User_Def_Field char(25), @BSSI_User_Def_Field_RS char(25), @BSSI_User_Def_Field_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_User_Def_Field_RS IS NULL BEGIN SELECT TOP 25  SEQNUMBR, BSSI_User_Def_Field, DEX_ROW_ID FROM .B7100910 WHERE ( BSSI_User_Def_Field > @BSSI_User_Def_Field ) ORDER BY BSSI_User_Def_Field ASC END ELSE IF @BSSI_User_Def_Field_RS = @BSSI_User_Def_Field_RE BEGIN SELECT TOP 25  SEQNUMBR, BSSI_User_Def_Field, DEX_ROW_ID FROM .B7100910 WHERE BSSI_User_Def_Field = @BSSI_User_Def_Field_RS AND ( BSSI_User_Def_Field > @BSSI_User_Def_Field ) ORDER BY BSSI_User_Def_Field ASC END ELSE BEGIN SELECT TOP 25  SEQNUMBR, BSSI_User_Def_Field, DEX_ROW_ID FROM .B7100910 WHERE BSSI_User_Def_Field BETWEEN @BSSI_User_Def_Field_RS AND @BSSI_User_Def_Field_RE AND ( BSSI_User_Def_Field > @BSSI_User_Def_Field ) ORDER BY BSSI_User_Def_Field ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100910N_1] TO [DYNGRP]
GO
