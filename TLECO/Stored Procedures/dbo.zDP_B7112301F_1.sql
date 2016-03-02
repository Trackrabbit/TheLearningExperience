SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112301F_1] (@BSSI_Recognition_SNumber_RS char(25), @BSSI_Line_Item_Sequence_RS int, @BSSI_Recognition_SNumber_RE char(25), @BSSI_Line_Item_Sequence_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DUMYRCRD, DEX_ROW_ID FROM .B7112301 ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Line_Item_Sequence ASC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DUMYRCRD, DEX_ROW_ID FROM .B7112301 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Line_Item_Sequence ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DUMYRCRD, DEX_ROW_ID FROM .B7112301 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE ORDER BY BSSI_Recognition_SNumber ASC, BSSI_Line_Item_Sequence ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112301F_1] TO [DYNGRP]
GO
