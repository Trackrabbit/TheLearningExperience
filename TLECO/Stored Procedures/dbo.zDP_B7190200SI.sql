SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190200SI] (@BSSI_Audit_Trail_Seq_Num numeric(19,5), @BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @BSSI_Recognition_SOrigin smallint, @BSSI_Action_Event smallint, @DOCNUMBR char(21), @ITEMNMBR char(31), @STRTDATE datetime, @ENDDATE datetime, @BACHNUMB char(15), @TRXDATE datetime, @JRNENTRY int, @BSSI_Debit_Acct_Index int, @BSSI_Credit_Acct_Index int, @DEBITAMT numeric(19,5), @CRDTAMNT numeric(19,5), @USERID char(15), @BSSI_Action_Date datetime, @TIME1 datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7190200 (BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1) VALUES ( @BSSI_Audit_Trail_Seq_Num, @BSSI_Recognition_SNumber, @BSSI_Line_Item_Sequence, @BSSI_Recognition_SOrigin, @BSSI_Action_Event, @DOCNUMBR, @ITEMNMBR, @STRTDATE, @ENDDATE, @BACHNUMB, @TRXDATE, @JRNENTRY, @BSSI_Debit_Acct_Index, @BSSI_Credit_Acct_Index, @DEBITAMT, @CRDTAMNT, @USERID, @BSSI_Action_Date, @TIME1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190200SI] TO [DYNGRP]
GO
