SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190201SS_4] (@JRNENTRY int, @BSSI_Credit_Acct_Index int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE JRNENTRY = @JRNENTRY AND BSSI_Credit_Acct_Index = @BSSI_Credit_Acct_Index ORDER BY JRNENTRY ASC, BSSI_Credit_Acct_Index ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190201SS_4] TO [DYNGRP]
GO
