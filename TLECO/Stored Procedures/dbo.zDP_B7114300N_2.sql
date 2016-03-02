SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7114300N_2] (@BS int, @BSSI_Recognition_SNumber char(25), @STRTDATE datetime, @ENDDATE datetime, @DEX_ROW_ID int, @BSSI_Recognition_SNumber_RS char(25), @STRTDATE_RS datetime, @ENDDATE_RS datetime, @BSSI_Recognition_SNumber_RE char(25), @STRTDATE_RE datetime, @ENDDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7114300 WHERE ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE > @STRTDATE OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7114300 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE > @STRTDATE OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7114300 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE AND ( BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE = @STRTDATE AND ENDDATE > @ENDDATE OR BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE > @STRTDATE OR BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber ) ORDER BY BSSI_Recognition_SNumber ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7114300N_2] TO [DYNGRP]
GO
