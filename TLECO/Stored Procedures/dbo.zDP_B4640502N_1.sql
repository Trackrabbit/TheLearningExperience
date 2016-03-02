SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640502N_1] (@BS int, @BSSI_Column_Filter_ID char(25), @BSSI_Column_Filter_ID_RS char(25), @BSSI_Column_Filter_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Column_Filter_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Column_Filter_ID, DEX_ROW_ID FROM .B4640502 WHERE ( BSSI_Column_Filter_ID > @BSSI_Column_Filter_ID ) ORDER BY BSSI_Column_Filter_ID ASC END ELSE IF @BSSI_Column_Filter_ID_RS = @BSSI_Column_Filter_ID_RE BEGIN SELECT TOP 25  BSSI_Column_Filter_ID, DEX_ROW_ID FROM .B4640502 WHERE BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID_RS AND ( BSSI_Column_Filter_ID > @BSSI_Column_Filter_ID ) ORDER BY BSSI_Column_Filter_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Column_Filter_ID, DEX_ROW_ID FROM .B4640502 WHERE BSSI_Column_Filter_ID BETWEEN @BSSI_Column_Filter_ID_RS AND @BSSI_Column_Filter_ID_RE AND ( BSSI_Column_Filter_ID > @BSSI_Column_Filter_ID ) ORDER BY BSSI_Column_Filter_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640502N_1] TO [DYNGRP]
GO
