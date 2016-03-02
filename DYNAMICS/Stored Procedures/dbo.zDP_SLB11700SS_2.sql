SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11700SS_2] (@PRODID smallint, @Series_Number smallint, @SmartList_ID char(15)) AS set nocount on SELECT TOP 1  SmartList_ID, PRODID, Series_Number, DEX_ROW_ID FROM .SLB11700 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND SmartList_ID = @SmartList_ID ORDER BY PRODID ASC, Series_Number ASC, SmartList_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11700SS_2] TO [DYNGRP]
GO
