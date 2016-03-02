SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9002SS_1] (@PRODID smallint, @Resource_Type smallint, @Series_Number smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  PRODID, Resource_Type, Series_Number, Series_Name, DEX_ROW_ID FROM .SC9002 WHERE PRODID = @PRODID AND Resource_Type = @Resource_Type AND Series_Number = @Series_Number ORDER BY PRODID ASC, Resource_Type ASC, Series_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9002SS_1] TO [DYNGRP]
GO
