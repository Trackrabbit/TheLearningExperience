SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190100N_2] (@BS int, @BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @DEX_ROW_ID int, @BSSI_Recognition_SNumber_RS char(25), @BSSI_Line_Item_Sequence_RS int, @BSSI_Recognition_SNumber_RE char(25), @BSSI_Line_Item_Sequence_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1, DEX_ROW_ID FROM .B7190100 WHERE ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Line_Item_Sequence ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1, DEX_ROW_ID FROM .B7190100 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Line_Item_Sequence ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1, DEX_ROW_ID FROM .B7190100 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Line_Item_Sequence ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190100N_2] TO [DYNGRP]
GO
