SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100190L_1] (@SALSTERR_RS char(15), @BSSI_Location_Segment_RS char(15), @SALSTERR_RE char(15), @BSSI_Location_Segment_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @SALSTERR_RS IS NULL BEGIN SELECT TOP 25  SALSTERR, BSSI_Segment_Value, BSSI_Location_Segment, DEX_ROW_ID FROM .B7100190 ORDER BY SALSTERR DESC, BSSI_Location_Segment DESC END ELSE IF @SALSTERR_RS = @SALSTERR_RE BEGIN SELECT TOP 25  SALSTERR, BSSI_Segment_Value, BSSI_Location_Segment, DEX_ROW_ID FROM .B7100190 WHERE SALSTERR = @SALSTERR_RS AND BSSI_Location_Segment BETWEEN @BSSI_Location_Segment_RS AND @BSSI_Location_Segment_RE ORDER BY SALSTERR DESC, BSSI_Location_Segment DESC END ELSE BEGIN SELECT TOP 25  SALSTERR, BSSI_Segment_Value, BSSI_Location_Segment, DEX_ROW_ID FROM .B7100190 WHERE SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND BSSI_Location_Segment BETWEEN @BSSI_Location_Segment_RS AND @BSSI_Location_Segment_RE ORDER BY SALSTERR DESC, BSSI_Location_Segment DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100190L_1] TO [DYNGRP]
GO
