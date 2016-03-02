SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240467L_1] (@EMPLOYID_RS char(15), @EMPLOYID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, ME_Direct_Deposit_OptIn, DEX_ROW_ID FROM .ME240467 ORDER BY EMPLOYID DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, ME_Direct_Deposit_OptIn, DEX_ROW_ID FROM .ME240467 WHERE EMPLOYID = @EMPLOYID_RS ORDER BY EMPLOYID DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, ME_Direct_Deposit_OptIn, DEX_ROW_ID FROM .ME240467 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY EMPLOYID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240467L_1] TO [DYNGRP]
GO
