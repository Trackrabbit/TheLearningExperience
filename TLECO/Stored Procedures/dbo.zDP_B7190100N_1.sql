SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190100N_1] (@BS int, @BSSI_Audit_Trail_Seq_Num numeric(19,5), @BSSI_Audit_Trail_Seq_Num_RS numeric(19,5), @BSSI_Audit_Trail_Seq_Num_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Audit_Trail_Seq_Num_RS IS NULL BEGIN SELECT TOP 25  BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1, DEX_ROW_ID FROM .B7190100 WHERE ( BSSI_Audit_Trail_Seq_Num > @BSSI_Audit_Trail_Seq_Num ) ORDER BY BSSI_Audit_Trail_Seq_Num ASC END ELSE IF @BSSI_Audit_Trail_Seq_Num_RS = @BSSI_Audit_Trail_Seq_Num_RE BEGIN SELECT TOP 25  BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1, DEX_ROW_ID FROM .B7190100 WHERE BSSI_Audit_Trail_Seq_Num = @BSSI_Audit_Trail_Seq_Num_RS AND ( BSSI_Audit_Trail_Seq_Num > @BSSI_Audit_Trail_Seq_Num ) ORDER BY BSSI_Audit_Trail_Seq_Num ASC END ELSE BEGIN SELECT TOP 25  BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1, DEX_ROW_ID FROM .B7190100 WHERE BSSI_Audit_Trail_Seq_Num BETWEEN @BSSI_Audit_Trail_Seq_Num_RS AND @BSSI_Audit_Trail_Seq_Num_RE AND ( BSSI_Audit_Trail_Seq_Num > @BSSI_Audit_Trail_Seq_Num ) ORDER BY BSSI_Audit_Trail_Seq_Num ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190100N_1] TO [DYNGRP]
GO
