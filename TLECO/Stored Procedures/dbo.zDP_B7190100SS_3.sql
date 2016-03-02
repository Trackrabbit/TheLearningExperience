SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190100SS_3] (@BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @BSSI_Action_Event smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Audit_Trail_Seq_Num, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, BSSI_Recognition_SOrigin, BSSI_Action_Event, DOCNUMBR, ITEMNMBR, STRTDATE, ENDDATE, BACHNUMB, TRXDATE, JRNENTRY, BSSI_Debit_Acct_Index, BSSI_Credit_Acct_Index, DEBITAMT, CRDTAMNT, USERID, BSSI_Action_Date, TIME1, DEX_ROW_ID FROM .B7190100 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND BSSI_Action_Event = @BSSI_Action_Event ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Line_Item_Sequence ASC, BSSI_Action_Event ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190100SS_3] TO [DYNGRP]
GO
