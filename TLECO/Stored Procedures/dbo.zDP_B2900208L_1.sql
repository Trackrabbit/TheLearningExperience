SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900208L_1] (@BSSI_ImportID_RS char(15), @DATE1_RS datetime, @USERID_RS char(15), @BSSI_ImportID_RE char(15), @DATE1_RE datetime, @USERID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_ImportID_RS IS NULL BEGIN SELECT TOP 25  BSSI_ImportID, DATE1, INTEREST_AMOUNT, USERID, ERRDESCR, DEX_ROW_ID FROM .B2900208 ORDER BY BSSI_ImportID DESC, DATE1 DESC, USERID DESC END ELSE IF @BSSI_ImportID_RS = @BSSI_ImportID_RE BEGIN SELECT TOP 25  BSSI_ImportID, DATE1, INTEREST_AMOUNT, USERID, ERRDESCR, DEX_ROW_ID FROM .B2900208 WHERE BSSI_ImportID = @BSSI_ImportID_RS AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY BSSI_ImportID DESC, DATE1 DESC, USERID DESC END ELSE BEGIN SELECT TOP 25  BSSI_ImportID, DATE1, INTEREST_AMOUNT, USERID, ERRDESCR, DEX_ROW_ID FROM .B2900208 WHERE BSSI_ImportID BETWEEN @BSSI_ImportID_RS AND @BSSI_ImportID_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY BSSI_ImportID DESC, DATE1 DESC, USERID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900208L_1] TO [DYNGRP]
GO