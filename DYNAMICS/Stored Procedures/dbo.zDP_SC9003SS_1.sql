SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9003SS_1] (@PRODID smallint, @Series_Number smallint, @FORMNAME char(79)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  PRODID, Series_Number, FORMNAME, DSPLNAME, DEX_ROW_ID FROM .SC9003 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND FORMNAME = @FORMNAME ORDER BY PRODID ASC, Series_Number ASC, FORMNAME ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9003SS_1] TO [DYNGRP]
GO
