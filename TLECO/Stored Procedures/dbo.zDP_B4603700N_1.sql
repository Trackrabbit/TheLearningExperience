SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603700N_1] (@BS int, @BSSI_Priority_Code_ID char(25), @BSSI_Priority_Code_ID_RS char(25), @BSSI_Priority_Code_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Priority_Code_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Priority_Code_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4603700 WHERE ( BSSI_Priority_Code_ID > @BSSI_Priority_Code_ID ) ORDER BY BSSI_Priority_Code_ID ASC END ELSE IF @BSSI_Priority_Code_ID_RS = @BSSI_Priority_Code_ID_RE BEGIN SELECT TOP 25  BSSI_Priority_Code_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4603700 WHERE BSSI_Priority_Code_ID = @BSSI_Priority_Code_ID_RS AND ( BSSI_Priority_Code_ID > @BSSI_Priority_Code_ID ) ORDER BY BSSI_Priority_Code_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Priority_Code_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4603700 WHERE BSSI_Priority_Code_ID BETWEEN @BSSI_Priority_Code_ID_RS AND @BSSI_Priority_Code_ID_RE AND ( BSSI_Priority_Code_ID > @BSSI_Priority_Code_ID ) ORDER BY BSSI_Priority_Code_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603700N_1] TO [DYNGRP]
GO
