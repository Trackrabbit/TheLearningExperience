SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7110300L_2] (@BSSI_Recognition_SNumber_RS char(25), @STRTDATE_RS datetime, @ENDDATE_RS datetime, @BSSI_Recognition_SNumber_RE char(25), @STRTDATE_RE datetime, @ENDDATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_EventID, BSSI_Description, BSSI_Identifier, BSSI_ExpiryDate, BSSI_ATEndDate, DEX_ROW_ID FROM .B7110300 ORDER BY BSSI_Recognition_SNumber DESC, STRTDATE DESC, ENDDATE DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_EventID, BSSI_Description, BSSI_Identifier, BSSI_ExpiryDate, BSSI_ATEndDate, DEX_ROW_ID FROM .B7110300 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE ORDER BY BSSI_Recognition_SNumber DESC, STRTDATE DESC, ENDDATE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, BSSI_NonAdjustedLine, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_EventID, BSSI_Description, BSSI_Identifier, BSSI_ExpiryDate, BSSI_ATEndDate, DEX_ROW_ID FROM .B7110300 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND STRTDATE BETWEEN @STRTDATE_RS AND @STRTDATE_RE AND ENDDATE BETWEEN @ENDDATE_RS AND @ENDDATE_RE ORDER BY BSSI_Recognition_SNumber DESC, STRTDATE DESC, ENDDATE DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7110300L_2] TO [DYNGRP]
GO
