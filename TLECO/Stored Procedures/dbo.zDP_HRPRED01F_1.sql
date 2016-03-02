SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPRED01F_1] (@EMPLOYID_RS char(15), @PAYRCORD_RS char(7), @EMPLOYID_RE char(15), @PAYRCORD_RE char(7)) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, REDLINETYPE_I, DEX_ROW_ID FROM .HRPRED01 ORDER BY EMPLOYID ASC, PAYRCORD ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, REDLINETYPE_I, DEX_ROW_ID FROM .HRPRED01 WHERE EMPLOYID = @EMPLOYID_RS AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY EMPLOYID ASC, PAYRCORD ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, REDLINETYPE_I, DEX_ROW_ID FROM .HRPRED01 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY EMPLOYID ASC, PAYRCORD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPRED01F_1] TO [DYNGRP]
GO