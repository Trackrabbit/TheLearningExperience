SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190202SS_2] (@BSSI_IsCredit tinyint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  JRNENTRY, ORTRXSRC, BSSI_Audit_Trail_Seq_Num, DOCDATE, ACTINDX, BSSI_Account_Number_1, BSSI_Account_Number_2, BSSI_Account_Number_3, BSSI_Account_Number_4, BSSI_IsCredit, BSSI_Recognition_Amount, BSSI_Description, USERID, DATE1, VOIDED, BSSI_Reverse_JE, BSSI_Recognition_SOrigin, DEX_ROW_ID FROM .B7190202 WHERE BSSI_IsCredit = @BSSI_IsCredit ORDER BY BSSI_IsCredit ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190202SS_2] TO [DYNGRP]
GO
