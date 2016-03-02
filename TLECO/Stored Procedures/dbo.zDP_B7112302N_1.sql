SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112302N_1] (@BS int, @BSSI_Recognition_SNumber char(25), @LNITMSEQ int, @BSSI_Line_Item_Sequence int, @BSSI_Recognition_SNumber_RS char(25), @LNITMSEQ_RS int, @BSSI_Line_Item_Sequence_RS int, @BSSI_Recognition_SNumber_RE char(25), @LNITMSEQ_RE int, @BSSI_Line_Item_Sequence_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  LNITMSEQ, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7112302 WHERE ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ > @LNITMSEQ OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, LNITMSEQ ASC, BSSI_Line_Item_Sequence ASC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  LNITMSEQ, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7112302 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ > @LNITMSEQ OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, LNITMSEQ ASC, BSSI_Line_Item_Sequence ASC END ELSE BEGIN SELECT TOP 25  LNITMSEQ, BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7112302 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ AND BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ > @LNITMSEQ OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, LNITMSEQ ASC, BSSI_Line_Item_Sequence ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112302N_1] TO [DYNGRP]
GO