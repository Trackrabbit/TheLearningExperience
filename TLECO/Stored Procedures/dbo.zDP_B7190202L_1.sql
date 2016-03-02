SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190202L_1] (@JRNENTRY_RS int, @ACTINDX_RS int, @JRNENTRY_RE int, @ACTINDX_RE int) AS /* 12.00.0270.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin, DEX_ROW_ID FROM .B7190202 ORDER BY JRNENTRY DESC, ACTINDX DESC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin, DEX_ROW_ID FROM .B7190202 WHERE JRNENTRY = @JRNENTRY_RS AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY JRNENTRY DESC, ACTINDX DESC END ELSE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin, DEX_ROW_ID FROM .B7190202 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE ORDER BY JRNENTRY DESC, ACTINDX DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190202L_1] TO [DYNGRP]
GO