SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112302SS_1] (@BSSI_Recognition_SNumber char(25), @LNITMSEQ int, @BSSI_Line_Item_Sequence int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LNITMSEQ, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7112302 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence ORDER BY BSSI_Recognition_SNumber ASC, LNITMSEQ ASC, BSSI_Line_Item_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112302SS_1] TO [DYNGRP]
GO
