SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190202L_2] (@BSSI_IsCredit_RS tinyint, @BSSI_IsCredit_RE tinyint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_IsCredit_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin, DEX_ROW_ID FROM .B7190202 ORDER BY BSSI_IsCredit DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_IsCredit_RS = @BSSI_IsCredit_RE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin, DEX_ROW_ID FROM .B7190202 WHERE BSSI_IsCredit = @BSSI_IsCredit_RS ORDER BY BSSI_IsCredit DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin, DEX_ROW_ID FROM .B7190202 WHERE BSSI_IsCredit BETWEEN @BSSI_IsCredit_RS AND @BSSI_IsCredit_RE ORDER BY BSSI_IsCredit DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190202L_2] TO [DYNGRP]
GO
