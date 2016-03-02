SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100910N_2] (@BS int, @SEQNUMBR int, @DEX_ROW_ID int, @SEQNUMBR_RS int, @SEQNUMBR_RE int) AS /* 12.00.0270.000 */ set nocount on IF @SEQNUMBR_RS IS NULL BEGIN SELECT TOP 25  SEQNUMBR, BSSI_User_Def_Field, DEX_ROW_ID FROM .B7100910 WHERE ( SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR SEQNUMBR > @SEQNUMBR ) ORDER BY SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @SEQNUMBR_RS = @SEQNUMBR_RE BEGIN SELECT TOP 25  SEQNUMBR, BSSI_User_Def_Field, DEX_ROW_ID FROM .B7100910 WHERE SEQNUMBR = @SEQNUMBR_RS AND ( SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR SEQNUMBR > @SEQNUMBR ) ORDER BY SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SEQNUMBR, BSSI_User_Def_Field, DEX_ROW_ID FROM .B7100910 WHERE SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR SEQNUMBR > @SEQNUMBR ) ORDER BY SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100910N_2] TO [DYNGRP]
GO
