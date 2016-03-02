SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4609100F_1] (@BSSI_MeterNumber_RS char(31), @BSSI_MeterNumber_RE char(31)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_MeterNumber_RS IS NULL BEGIN SELECT TOP 25  BSSI_MeterNumber, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609100 ORDER BY BSSI_MeterNumber ASC END ELSE IF @BSSI_MeterNumber_RS = @BSSI_MeterNumber_RE BEGIN SELECT TOP 25  BSSI_MeterNumber, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609100 WHERE BSSI_MeterNumber = @BSSI_MeterNumber_RS ORDER BY BSSI_MeterNumber ASC END ELSE BEGIN SELECT TOP 25  BSSI_MeterNumber, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4609100 WHERE BSSI_MeterNumber BETWEEN @BSSI_MeterNumber_RS AND @BSSI_MeterNumber_RE ORDER BY BSSI_MeterNumber ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4609100F_1] TO [DYNGRP]
GO
