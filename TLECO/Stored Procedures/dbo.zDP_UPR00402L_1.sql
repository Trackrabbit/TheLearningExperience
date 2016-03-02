SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00402L_1] (@EMPLOYID_RS char(15), @PAYRCORD_RS char(7), @Effective_Date_RS datetime, @EMPLOYID_RE char(15), @PAYRCORD_RE char(7), @Effective_Date_RE datetime) AS  set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, Effective_Date, PAYRTAMT, CHANGEREASON_I, PayStepStatus, PYSTPTBLID, Step, DEX_ROW_ID FROM .UPR00402 ORDER BY EMPLOYID DESC, PAYRCORD DESC, Effective_Date DESC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, Effective_Date, PAYRTAMT, CHANGEREASON_I, PayStepStatus, PYSTPTBLID, Step, DEX_ROW_ID FROM .UPR00402 WHERE EMPLOYID = @EMPLOYID_RS AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND Effective_Date BETWEEN @Effective_Date_RS AND @Effective_Date_RE ORDER BY EMPLOYID DESC, PAYRCORD DESC, Effective_Date DESC END ELSE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, Effective_Date, PAYRTAMT, CHANGEREASON_I, PayStepStatus, PYSTPTBLID, Step, DEX_ROW_ID FROM .UPR00402 WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE AND Effective_Date BETWEEN @Effective_Date_RS AND @Effective_Date_RE ORDER BY EMPLOYID DESC, PAYRCORD DESC, Effective_Date DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00402L_1] TO [DYNGRP]
GO
