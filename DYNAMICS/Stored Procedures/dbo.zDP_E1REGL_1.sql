SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_E1REGL_1] (@PRODID_RS smallint, @PRODID_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, REGNKEYS_1, REGNKEYS_2, REGNKEYS_3, REGNKEYS_4, REGNKEYS_5, DEX_ROW_ID FROM .E1REG ORDER BY PRODID DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, REGNKEYS_1, REGNKEYS_2, REGNKEYS_3, REGNKEYS_4, REGNKEYS_5, DEX_ROW_ID FROM .E1REG WHERE PRODID = @PRODID_RS ORDER BY PRODID DESC END ELSE BEGIN SELECT TOP 25  PRODID, REGNKEYS_1, REGNKEYS_2, REGNKEYS_3, REGNKEYS_4, REGNKEYS_5, DEX_ROW_ID FROM .E1REG WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE ORDER BY PRODID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_E1REGL_1] TO [DYNGRP]
GO
