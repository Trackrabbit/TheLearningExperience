SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100702L_2] (@BSSI_EventID_RS char(25), @BSSI_EventID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_EventID_RS IS NULL BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 ORDER BY BSSI_EventID DESC END ELSE IF @BSSI_EventID_RS = @BSSI_EventID_RE BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE BSSI_EventID = @BSSI_EventID_RS ORDER BY BSSI_EventID DESC END ELSE BEGIN SELECT TOP 25  BSSI_EventID, LNITMSEQ, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B7100702 WHERE BSSI_EventID BETWEEN @BSSI_EventID_RS AND @BSSI_EventID_RE ORDER BY BSSI_EventID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100702L_2] TO [DYNGRP]
GO
