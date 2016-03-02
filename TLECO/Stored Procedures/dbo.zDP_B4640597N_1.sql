SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640597N_1] (@BS int, @BSSI_Column_Filter_ID char(25), @USERID char(15), @BSSI_Column_Filter_ID_RS char(25), @USERID_RS char(15), @BSSI_Column_Filter_ID_RE char(25), @USERID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Column_Filter_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Column_Filter_ID, BSSI_Description, BSSI_Marked, USERID, DEX_ROW_ID FROM .B4640597 WHERE ( BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID AND USERID > @USERID OR BSSI_Column_Filter_ID > @BSSI_Column_Filter_ID ) ORDER BY BSSI_Column_Filter_ID ASC, USERID ASC END ELSE IF @BSSI_Column_Filter_ID_RS = @BSSI_Column_Filter_ID_RE BEGIN SELECT TOP 25  BSSI_Column_Filter_ID, BSSI_Description, BSSI_Marked, USERID, DEX_ROW_ID FROM .B4640597 WHERE BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID AND USERID > @USERID OR BSSI_Column_Filter_ID > @BSSI_Column_Filter_ID ) ORDER BY BSSI_Column_Filter_ID ASC, USERID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Column_Filter_ID, BSSI_Description, BSSI_Marked, USERID, DEX_ROW_ID FROM .B4640597 WHERE BSSI_Column_Filter_ID BETWEEN @BSSI_Column_Filter_ID_RS AND @BSSI_Column_Filter_ID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( BSSI_Column_Filter_ID = @BSSI_Column_Filter_ID AND USERID > @USERID OR BSSI_Column_Filter_ID > @BSSI_Column_Filter_ID ) ORDER BY BSSI_Column_Filter_ID ASC, USERID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640597N_1] TO [DYNGRP]
GO
