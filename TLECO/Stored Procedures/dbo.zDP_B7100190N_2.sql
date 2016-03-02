SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100190N_2] (@BS int, @BSSI_Location_Segment char(15), @SALSTERR char(15), @BSSI_Location_Segment_RS char(15), @SALSTERR_RS char(15), @BSSI_Location_Segment_RE char(15), @SALSTERR_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Location_Segment_RS IS NULL BEGIN SELECT TOP 25  SALSTERR, BSSI_Segment_Value, BSSI_Location_Segment, DEX_ROW_ID FROM .B7100190 WHERE ( BSSI_Location_Segment = @BSSI_Location_Segment AND SALSTERR > @SALSTERR OR BSSI_Location_Segment > @BSSI_Location_Segment ) ORDER BY BSSI_Location_Segment ASC, SALSTERR ASC END ELSE IF @BSSI_Location_Segment_RS = @BSSI_Location_Segment_RE BEGIN SELECT TOP 25  SALSTERR, BSSI_Segment_Value, BSSI_Location_Segment, DEX_ROW_ID FROM .B7100190 WHERE BSSI_Location_Segment = @BSSI_Location_Segment_RS AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND ( BSSI_Location_Segment = @BSSI_Location_Segment AND SALSTERR > @SALSTERR OR BSSI_Location_Segment > @BSSI_Location_Segment ) ORDER BY BSSI_Location_Segment ASC, SALSTERR ASC END ELSE BEGIN SELECT TOP 25  SALSTERR, BSSI_Segment_Value, BSSI_Location_Segment, DEX_ROW_ID FROM .B7100190 WHERE BSSI_Location_Segment BETWEEN @BSSI_Location_Segment_RS AND @BSSI_Location_Segment_RE AND SALSTERR BETWEEN @SALSTERR_RS AND @SALSTERR_RE AND ( BSSI_Location_Segment = @BSSI_Location_Segment AND SALSTERR > @SALSTERR OR BSSI_Location_Segment > @BSSI_Location_Segment ) ORDER BY BSSI_Location_Segment ASC, SALSTERR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100190N_2] TO [DYNGRP]
GO
