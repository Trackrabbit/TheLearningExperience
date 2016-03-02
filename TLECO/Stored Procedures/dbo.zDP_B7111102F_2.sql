SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7111102F_2] (@SERLNMBR_RS char(21), @SERLNMBR_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @SERLNMBR_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR, DEX_ROW_ID FROM .B7111102 ORDER BY SERLNMBR ASC, DEX_ROW_ID ASC END ELSE IF @SERLNMBR_RS = @SERLNMBR_RE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR, DEX_ROW_ID FROM .B7111102 WHERE SERLNMBR = @SERLNMBR_RS ORDER BY SERLNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SERLNMBR, DEX_ROW_ID FROM .B7111102 WHERE SERLNMBR BETWEEN @SERLNMBR_RS AND @SERLNMBR_RE ORDER BY SERLNMBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7111102F_2] TO [DYNGRP]
GO
