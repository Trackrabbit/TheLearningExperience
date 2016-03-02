SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90102SS_1] (@PRODID smallint, @Resource_Type smallint, @Series_Number smallint) AS set nocount on SELECT TOP 1  PRODID, Resource_Type, Series_Number, DEX_ROW_ID FROM .EXT90102 WHERE PRODID = @PRODID AND Resource_Type = @Resource_Type AND Series_Number = @Series_Number ORDER BY PRODID ASC, Resource_Type ASC, Series_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90102SS_1] TO [DYNGRP]
GO
