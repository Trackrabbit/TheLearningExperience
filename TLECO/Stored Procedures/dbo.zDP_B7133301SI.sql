SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7133301SI] (@BSSI_Recognition_SNumber char(25), @BSSI_Line_Item_Sequence int, @DSTSQNUM int, @STRTDATE datetime, @ENDDATE datetime, @BSSI_Recognition_Amount numeric(19,5), @BSSI_IsAmount_Recognized tinyint, @BSSI_IsAmount_Stub tinyint, @BSSI_Merged tinyint, @BSSI_Orig_Line_Item_Seq int, @SEQNUMBR int, @PERIODID smallint, @YEAR1 smallint, @BSSI_Recognition_Type smallint, @BSSI_Identifier char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7133301 (BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, DSTSQNUM, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, SEQNUMBR, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier) VALUES ( @BSSI_Recognition_SNumber, @BSSI_Line_Item_Sequence, @DSTSQNUM, @STRTDATE, @ENDDATE, @BSSI_Recognition_Amount, @BSSI_IsAmount_Recognized, @BSSI_IsAmount_Stub, @BSSI_Merged, @BSSI_Orig_Line_Item_Seq, @SEQNUMBR, @PERIODID, @YEAR1, @BSSI_Recognition_Type, @BSSI_Identifier) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7133301SI] TO [DYNGRP]
GO
