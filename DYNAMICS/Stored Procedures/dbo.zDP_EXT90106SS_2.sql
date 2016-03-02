SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90106SS_2] (@PRODID smallint, @TABLTECH char(79)) AS set nocount on SELECT TOP 1  PRODID, Series_Number, TABLTECH, TABLDESC, DEX_ROW_ID FROM .EXT90106 WHERE PRODID = @PRODID AND TABLTECH = @TABLTECH ORDER BY PRODID ASC, TABLTECH ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90106SS_2] TO [DYNGRP]
GO