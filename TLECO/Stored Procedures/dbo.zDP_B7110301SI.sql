SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110301SI] (@BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @SEQNUMBR int, @STRTDATE datetime, @ENDDATE datetime, @BSSI_Recognition_Amount numeric(19,5), @BSSI_IsAmount_Recognized tinyint, @BSSI_IsAmount_Stub tinyint, @BSSI_Merged tinyint, @BSSI_Orig_Line_Item_Seq int, @PERIODID smallint, @YEAR1 smallint, @BSSI_Recognition_Type smallint, @BSSI_EventID char(25), @BSSI_Description char(51), @BSSI_Identifier char(31), @BSSI_ExpiryDate datetime, @BSSI_ATEndDate datetime, @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7110301 (BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_EventID, BSSI_Description, BSSI_Identifier, BSSI_ExpiryDate, BSSI_ATEndDate, DUMYRCRD) VALUES ( @BSSI_Recognition_SNumber, @BSSI_Line_Item_Sequence, @SEQNUMBR, @STRTDATE, @ENDDATE, @BSSI_Recognition_Amount, @BSSI_IsAmount_Recognized, @BSSI_IsAmount_Stub, @BSSI_Merged, @BSSI_Orig_Line_Item_Seq, @PERIODID, @YEAR1, @BSSI_Recognition_Type, @BSSI_EventID, @BSSI_Description, @BSSI_Identifier, @BSSI_ExpiryDate, @BSSI_ATEndDate, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110301SI] TO [DYNGRP]
GO
