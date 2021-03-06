SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TAIVRecL_1] (@ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, TAIVRecReason, DEX_ROW_ID FROM .TAIVRec ORDER BY ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, TAIVRecReason, DEX_ROW_ID FROM .TAIVRec WHERE ITEMNMBR = @ITEMNMBR_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, TAIVRecReason, DEX_ROW_ID FROM .TAIVRec WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TAIVRecL_1] TO [DYNGRP]
GO
