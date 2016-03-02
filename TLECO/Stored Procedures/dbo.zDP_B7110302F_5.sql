SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110302F_5] (@BSSI_Processed_RS tinyint, @BSSI_Recognition_SOrigin_RS smallint, @BSSI_Recognition_SNumber_RS char(25), @BSSI_Processed_RE tinyint, @BSSI_Recognition_SOrigin_RE smallint, @BSSI_Recognition_SNumber_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Processed_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 ORDER BY BSSI_Processed ASC, BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Processed_RS = @BSSI_Processed_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 WHERE BSSI_Processed = @BSSI_Processed_RS AND BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE ORDER BY BSSI_Processed ASC, BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 WHERE BSSI_Processed BETWEEN @BSSI_Processed_RS AND @BSSI_Processed_RE AND BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE ORDER BY BSSI_Processed ASC, BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110302F_5] TO [DYNGRP]
GO
