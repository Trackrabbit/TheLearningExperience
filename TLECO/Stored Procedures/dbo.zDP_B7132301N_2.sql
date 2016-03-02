SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7132301N_2] (@BS int, @BSSI_Line_Item_Sequence int, @STRTDATE datetime, @ENDDATE datetime, @DEX_ROW_ID int, @BSSI_Line_Item_Sequence_RS int, @STRTDATE_RS datetime, @ENDDATE_RS datetime, @BSSI_Line_Item_Sequence_RE int, @STRTDATE_RE datetime, @ENDDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Line_Item_Sequence_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7132301 WHERE ( BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE > @STRTDATE OR BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence ) ORDER BY BSSI_Line_Item_Sequence ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Line_Item_Sequence_RS = @BSSI_Line_Item_Sequence_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7132301 WHERE BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ( BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE > @STRTDATE OR BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence ) ORDER BY BSSI_Line_Item_Sequence ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7132301 WHERE BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ( BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE > @STRTDATE OR BSSI_Line_Item_Sequence > @BSSI_Line_Item_Sequence ) ORDER BY BSSI_Line_Item_Sequence ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7132301N_2] TO [DYNGRP]
GO
