SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601600L_1] (@BSSI_EasementID_RS char(25), @BSSI_EasementID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_EasementID_RS IS NULL BEGIN SELECT TOP 25  BSSI_EasementID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601600 ORDER BY BSSI_EasementID DESC END ELSE IF @BSSI_EasementID_RS = @BSSI_EasementID_RE BEGIN SELECT TOP 25  BSSI_EasementID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601600 WHERE BSSI_EasementID = @BSSI_EasementID_RS ORDER BY BSSI_EasementID DESC END ELSE BEGIN SELECT TOP 25  BSSI_EasementID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601600 WHERE BSSI_EasementID BETWEEN @BSSI_EasementID_RS AND @BSSI_EasementID_RE ORDER BY BSSI_EasementID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601600L_1] TO [DYNGRP]
GO
