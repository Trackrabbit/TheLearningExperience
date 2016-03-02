SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90200SS_1] (@PRODID smallint, @Series_Number smallint) AS set nocount on SELECT TOP 1  PRODID, Series_Number, Series_Name, DEX_ROW_ID FROM .ERB90200 WHERE PRODID = @PRODID AND Series_Number = @Series_Number ORDER BY PRODID ASC, Series_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90200SS_1] TO [DYNGRP]
GO
