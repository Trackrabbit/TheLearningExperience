SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10000SS_3] (@SmartList_Number smallint) AS set nocount on SELECT TOP 1  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE SmartList_Number = @SmartList_Number ORDER BY SmartList_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10000SS_3] TO [DYNGRP]
GO
