SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT21010L_1] (@Extender_Solution_ID_RS int, @Extender_Type_RS smallint, @Extender_ID_RS char(15), @Extender_Solution_ID_RE int, @Extender_Type_RE smallint, @Extender_ID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Solution_ID_RS IS NULL BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT21010 ORDER BY Extender_Solution_ID DESC, Extender_Type DESC, Extender_ID DESC END ELSE IF @Extender_Solution_ID_RS = @Extender_Solution_ID_RE BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT21010 WHERE Extender_Solution_ID = @Extender_Solution_ID_RS AND Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY Extender_Solution_ID DESC, Extender_Type DESC, Extender_ID DESC END ELSE BEGIN SELECT TOP 25  Extender_Solution_ID, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT21010 WHERE Extender_Solution_ID BETWEEN @Extender_Solution_ID_RS AND @Extender_Solution_ID_RE AND Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Extender_ID BETWEEN @Extender_ID_RS AND @Extender_ID_RE ORDER BY Extender_Solution_ID DESC, Extender_Type DESC, Extender_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT21010L_1] TO [DYNGRP]
GO
