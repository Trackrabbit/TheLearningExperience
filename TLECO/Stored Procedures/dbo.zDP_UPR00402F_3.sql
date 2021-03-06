SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00402F_3] (@Effective_Date_RS datetime, @EMPLOYID_RS char(15), @PAYRCORD_RS char(7), @Effective_Date_RE datetime, @EMPLOYID_RE char(15), @PAYRCORD_RE char(7)) AS  set nocount on IF @Effective_Date_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, Effective_Date, PAYRTAMT, CHANGEREASON_I, PayStepStatus, PYSTPTBLID, Step, DEX_ROW_ID FROM .UPR00402 ORDER BY Effective_Date ASC, EMPLOYID ASC, PAYRCORD ASC END ELSE IF @Effective_Date_RS = @Effective_Date_RE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, Effective_Date, PAYRTAMT, CHANGEREASON_I, PayStepStatus, PYSTPTBLID, Step, DEX_ROW_ID FROM .UPR00402 WHERE Effective_Date = @Effective_Date_RS AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY Effective_Date ASC, EMPLOYID ASC, PAYRCORD ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, PAYRCORD, Effective_Date, PAYRTAMT, CHANGEREASON_I, PayStepStatus, PYSTPTBLID, Step, DEX_ROW_ID FROM .UPR00402 WHERE Effective_Date BETWEEN @Effective_Date_RS AND @Effective_Date_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PAYRCORD BETWEEN @PAYRCORD_RS AND @PAYRCORD_RE ORDER BY Effective_Date ASC, EMPLOYID ASC, PAYRCORD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00402F_3] TO [DYNGRP]
GO
