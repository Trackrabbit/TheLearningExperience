SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133305SS_1] (@SOPNUMBE char(21), @SOPTYPE smallint, @LNITMSEQ int, @CMPNTSEQ int, @BSSI_Line_Item_Sequence int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_Line_Item_Sequence, BSSI_EventID, SEQNUMBR, BSSI_Description, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_ExpiryDate, BSSI_ATEndDate, BSSI_Event_Percent, BSSI_Event_Percent1, XTNDPRCE, OXTNDPRC, BSSI_Recognition_Amount, BSSI_Orig_Recog_Amt, BSSI_Identifier, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, DEX_ROW_ID FROM .B7133305 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence ORDER BY SOPNUMBE ASC, SOPTYPE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, BSSI_Line_Item_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133305SS_1] TO [DYNGRP]
GO