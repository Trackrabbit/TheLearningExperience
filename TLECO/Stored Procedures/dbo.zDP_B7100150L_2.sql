SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100150L_2] (@CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  MODULE1, CUSTNMBR, DEX_ROW_ID FROM .B7100150 ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  MODULE1, CUSTNMBR, DEX_ROW_ID FROM .B7100150 WHERE CUSTNMBR = @CUSTNMBR_RS ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MODULE1, CUSTNMBR, DEX_ROW_ID FROM .B7100150 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTNMBR DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100150L_2] TO [DYNGRP]
GO
