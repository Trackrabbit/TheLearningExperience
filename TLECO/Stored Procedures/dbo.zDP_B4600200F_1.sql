SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600200F_1] (@BSSI_DeedTypeID_RS char(25), @BSSI_DeedTypeID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_DeedTypeID_RS IS NULL BEGIN SELECT TOP 25  BSSI_DeedTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600200 ORDER BY BSSI_DeedTypeID ASC END ELSE IF @BSSI_DeedTypeID_RS = @BSSI_DeedTypeID_RE BEGIN SELECT TOP 25  BSSI_DeedTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600200 WHERE BSSI_DeedTypeID = @BSSI_DeedTypeID_RS ORDER BY BSSI_DeedTypeID ASC END ELSE BEGIN SELECT TOP 25  BSSI_DeedTypeID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4600200 WHERE BSSI_DeedTypeID BETWEEN @BSSI_DeedTypeID_RS AND @BSSI_DeedTypeID_RE ORDER BY BSSI_DeedTypeID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600200F_1] TO [DYNGRP]
GO
