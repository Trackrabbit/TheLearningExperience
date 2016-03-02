SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190201F_1] (@JRNENTRY_RS int, @SEQCOUNT_RS int, @JRNENTRY_RE int, @SEQCOUNT_RE int) AS /* 12.00.0270.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 ORDER BY JRNENTRY ASC, SEQCOUNT ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE JRNENTRY = @JRNENTRY_RS AND SEQCOUNT BETWEEN @SEQCOUNT_RS AND @SEQCOUNT_RE ORDER BY JRNENTRY ASC, SEQCOUNT ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND SEQCOUNT BETWEEN @SEQCOUNT_RS AND @SEQCOUNT_RE ORDER BY JRNENTRY ASC, SEQCOUNT ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190201F_1] TO [DYNGRP]
GO
