SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9001SS_1] (@PRODID smallint, @Series_Number smallint, @TABLTECH char(79)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  PRODID, Series_Number, TABLTECH, TBLPHYSNM, TABLDESC, DEX_ROW_ID FROM .SC9001 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND TABLTECH = @TABLTECH ORDER BY PRODID ASC, Series_Number ASC, TABLTECH ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9001SS_1] TO [DYNGRP]
GO
