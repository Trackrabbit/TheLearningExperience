SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2530000SS_1] (@PARVENID char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  PARVENID, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .B2530000 WHERE PARVENID = @PARVENID ORDER BY PARVENID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2530000SS_1] TO [DYNGRP]
GO