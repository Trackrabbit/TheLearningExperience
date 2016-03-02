SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10000L_3] (@SmartList_Number_RS smallint, @SmartList_Number_RE smallint) AS set nocount on IF @SmartList_Number_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 ORDER BY SmartList_Number DESC END ELSE IF @SmartList_Number_RS = @SmartList_Number_RE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE SmartList_Number = @SmartList_Number_RS ORDER BY SmartList_Number DESC END ELSE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE SmartList_Number BETWEEN @SmartList_Number_RS AND @SmartList_Number_RE ORDER BY SmartList_Number DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10000L_3] TO [DYNGRP]
GO
