SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5002L_2] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS /* 14.00.0084.000 */ set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, JRNENTRY, TRXDATE, STRGA255, DEX_ROW_ID FROM .NCIC5002 ORDER BY DEX_ROW_ID DESC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, JRNENTRY, TRXDATE, STRGA255, DEX_ROW_ID FROM .NCIC5002 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, JRNENTRY, TRXDATE, STRGA255, DEX_ROW_ID FROM .NCIC5002 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5002L_2] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5002L_2] TO [public]
GO