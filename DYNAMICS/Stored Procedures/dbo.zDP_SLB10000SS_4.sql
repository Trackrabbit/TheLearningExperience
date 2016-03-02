SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10000SS_4] (@PRODID smallint, @Series_Number smallint, @SmartList_ID char(15)) AS set nocount on SELECT TOP 1  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND SmartList_ID = @SmartList_ID ORDER BY PRODID ASC, Series_Number ASC, SmartList_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10000SS_4] TO [DYNGRP]
GO
