SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190201UN_2] (@BS int, @BSSI_Recognition_SNumber char(25), @BSSI_Recognition_SOrigin smallint, @BSSI_Line_Item_Sequence int, @BSSI_Recognition_SNumber_RS char(25), @BSSI_Recognition_SOrigin_RS smallint, @BSSI_Line_Item_Sequence_RS int, @BSSI_Recognition_SNumber_RE char(25), @BSSI_Recognition_SOrigin_RE smallint, @BSSI_Line_Item_Sequence_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Recognition_SOrigin ASC, BSSI_Line_Item_Sequence ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Recognition_SOrigin ASC, BSSI_Line_Item_Sequence ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  JRNENTRY, ORTRXSRC, SEQCOUNT, BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Recognition_SOrigin, BSSI_Line_Item_Sequence, SEQNUMBR, ITEMNMBR, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, BSSI_Debit_Account_1, BSSI_Debit_Account_2, BSSI_Debit_Account_3, BSSI_Debit_Account_4, BSSI_Credit_Account_1, BSSI_Credit_Account_2, BSSI_Credit_Account_3, BSSI_Credit_Account_4, DEBITAMT, CRDTAMNT, BSSI_Recognition_Amount, DOCDATE, BSSI_Description, ERRDESCR, USERID, DATE1, DEX_ROW_ID FROM .B7190201 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Recognition_SOrigin ASC, BSSI_Line_Item_Sequence ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190201UN_2] TO [DYNGRP]
GO
