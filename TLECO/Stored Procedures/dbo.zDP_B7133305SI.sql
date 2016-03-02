SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133305SI] (@SOPNUMBE char(21), @SOPTYPE smallint, @LNITMSEQ int, @CMPNTSEQ int, @BSSI_Line_Item_Sequence int, @BSSI_EventID char(25), @SEQNUMBR int, @BSSI_Description char(51), @BSSI_DeferralStartDate datetime, @BSSI_DeferralEndDate datetime, @BSSI_ExpiryDate datetime, @BSSI_ATEndDate datetime, @BSSI_Event_Percent smallint, @BSSI_Event_Percent1 smallint, @XTNDPRCE numeric(19,5), @OXTNDPRC numeric(19,5), @BSSI_Recognition_Amount numeric(19,5), @BSSI_Orig_Recog_Amt numeric(19,5), @BSSI_Identifier char(31), @BSSI_IsAmount_Recognized tinyint, @BSSI_IsAmount_Stub tinyint, @BSSI_Merged tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7133305 (SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_Line_Item_Sequence, BSSI_EventID, SEQNUMBR, BSSI_Description, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_ExpiryDate, BSSI_ATEndDate, BSSI_Event_Percent, BSSI_Event_Percent1, XTNDPRCE, OXTNDPRC, BSSI_Recognition_Amount, BSSI_Orig_Recog_Amt, BSSI_Identifier, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged) VALUES ( @SOPNUMBE, @SOPTYPE, @LNITMSEQ, @CMPNTSEQ, @BSSI_Line_Item_Sequence, @BSSI_EventID, @SEQNUMBR, @BSSI_Description, @BSSI_DeferralStartDate, @BSSI_DeferralEndDate, @BSSI_ExpiryDate, @BSSI_ATEndDate, @BSSI_Event_Percent, @BSSI_Event_Percent1, @XTNDPRCE, @OXTNDPRC, @BSSI_Recognition_Amount, @BSSI_Orig_Recog_Amt, @BSSI_Identifier, @BSSI_IsAmount_Recognized, @BSSI_IsAmount_Stub, @BSSI_Merged) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133305SI] TO [DYNGRP]
GO