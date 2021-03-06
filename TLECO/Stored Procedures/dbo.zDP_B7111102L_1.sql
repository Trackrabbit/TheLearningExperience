SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7111102L_1] (@BSSI_Recognition_SNumber_RS char(25), @BSSI_Line_Item_Sequence_RS int, @BSSI_Recognition_SNumber_RE char(25), @BSSI_Line_Item_Sequence_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SNumber_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR, DEX_ROW_ID FROM .B7111102 ORDER BY BSSI_Recognition_SNumber DESC, BSSI_Line_Item_Sequence DESC END ELSE IF @BSSI_Recognition_SNumber_RS = @BSSI_Recognition_SNumber_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR, DEX_ROW_ID FROM .B7111102 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber_RS AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE ORDER BY BSSI_Recognition_SNumber DESC, BSSI_Line_Item_Sequence DESC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR, DEX_ROW_ID FROM .B7111102 WHERE BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND BSSI_Line_Item_Sequence BETWEEN @BSSI_Line_Item_Sequence_RS AND @BSSI_Line_Item_Sequence_RE ORDER BY BSSI_Recognition_SNumber DESC, BSSI_Line_Item_Sequence DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7111102L_1] TO [DYNGRP]
GO
