SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10000SS_2] (@SmartList_Name char(65)) AS set nocount on SELECT TOP 1  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE SmartList_Name = @SmartList_Name ORDER BY SmartList_Name ASC, DEX_ROW_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10000SS_2] TO [DYNGRP]
GO
