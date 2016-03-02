SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110302F_2] (@BSSI_Recognition_SOrigin_RS smallint, @CREDIT_MEMO_DOC_NUM_RS char(21), @BSSI_Processed_RS tinyint, @BSSI_Recognition_SOrigin_RE smallint, @CREDIT_MEMO_DOC_NUM_RE char(21), @BSSI_Processed_RE tinyint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SOrigin_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 ORDER BY BSSI_Recognition_SOrigin ASC, CREDIT_MEMO_DOC_NUM ASC, BSSI_Processed ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Recognition_SOrigin_RS = @BSSI_Recognition_SOrigin_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin_RS AND CREDIT_MEMO_DOC_NUM BETWEEN @CREDIT_MEMO_DOC_NUM_RS AND @CREDIT_MEMO_DOC_NUM_RE AND BSSI_Processed BETWEEN @BSSI_Processed_RS AND @BSSI_Processed_RE ORDER BY BSSI_Recognition_SOrigin ASC, CREDIT_MEMO_DOC_NUM ASC, BSSI_Processed ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, CREDIT_MEMO_DOC_NUM, APPLDAMT, DATE1, USERID, BSSI_Processed, BSSI_Comment, DUMYRCRD, DEX_ROW_ID FROM .B7110302 WHERE BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND CREDIT_MEMO_DOC_NUM BETWEEN @CREDIT_MEMO_DOC_NUM_RS AND @CREDIT_MEMO_DOC_NUM_RE AND BSSI_Processed BETWEEN @BSSI_Processed_RS AND @BSSI_Processed_RE ORDER BY BSSI_Recognition_SOrigin ASC, CREDIT_MEMO_DOC_NUM ASC, BSSI_Processed ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110302F_2] TO [DYNGRP]
GO
