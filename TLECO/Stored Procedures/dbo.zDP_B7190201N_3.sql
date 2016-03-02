SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190201N_3] (@BS int, @JRNENTRY int, @BSSI_Debit_Acct_Index int, @DEX_ROW_ID int, @JRNENTRY_RS int, @BSSI_Debit_Acct_Index_RS int, @JRNENTRY_RE int, @BSSI_Debit_Acct_Index_RE int) AS /* 12.00.0270.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE ( JRNENTRY = @JRNENTRY AND BSSI_Debit_Acct_Index = @BSSI_Debit_Acct_Index AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY = @JRNENTRY AND BSSI_Debit_Acct_Index > @BSSI_Debit_Acct_Index OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, BSSI_Debit_Acct_Index ASC, DEX_ROW_ID ASC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE JRNENTRY = @JRNENTRY_RS AND BSSI_Debit_Acct_Index BETWEEN @BSSI_Debit_Acct_Index_RS AND @BSSI_Debit_Acct_Index_RE AND ( JRNENTRY = @JRNENTRY AND BSSI_Debit_Acct_Index = @BSSI_Debit_Acct_Index AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY = @JRNENTRY AND BSSI_Debit_Acct_Index > @BSSI_Debit_Acct_Index OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, BSSI_Debit_Acct_Index ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND BSSI_Debit_Acct_Index BETWEEN @BSSI_Debit_Acct_Index_RS AND @BSSI_Debit_Acct_Index_RE AND ( JRNENTRY = @JRNENTRY AND BSSI_Debit_Acct_Index = @BSSI_Debit_Acct_Index AND DEX_ROW_ID > @DEX_ROW_ID OR JRNENTRY = @JRNENTRY AND BSSI_Debit_Acct_Index > @BSSI_Debit_Acct_Index OR JRNENTRY > @JRNENTRY ) ORDER BY JRNENTRY ASC, BSSI_Debit_Acct_Index ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190201N_3] TO [DYNGRP]
GO
