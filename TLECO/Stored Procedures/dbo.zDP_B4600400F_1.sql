SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600400F_1] (@BSSI_Region_ID_RS char(25), @BSSI_Region_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Region_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Region_ID, BSSI_Description, Location_Segment, NOTEINDX, DEX_ROW_ID FROM .B4600400 ORDER BY BSSI_Region_ID ASC END ELSE IF @BSSI_Region_ID_RS = @BSSI_Region_ID_RE BEGIN SELECT TOP 25  BSSI_Region_ID, BSSI_Description, Location_Segment, NOTEINDX, DEX_ROW_ID FROM .B4600400 WHERE BSSI_Region_ID = @BSSI_Region_ID_RS ORDER BY BSSI_Region_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Region_ID, BSSI_Description, Location_Segment, NOTEINDX, DEX_ROW_ID FROM .B4600400 WHERE BSSI_Region_ID BETWEEN @BSSI_Region_ID_RS AND @BSSI_Region_ID_RE ORDER BY BSSI_Region_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600400F_1] TO [DYNGRP]
GO