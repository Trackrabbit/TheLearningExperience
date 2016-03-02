SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10000F_2] (@SmartList_Name_RS char(65), @SmartList_Name_RE char(65)) AS set nocount on IF @SmartList_Name_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 ORDER BY SmartList_Name ASC, DEX_ROW_ID ASC END ELSE IF @SmartList_Name_RS = @SmartList_Name_RE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE SmartList_Name = @SmartList_Name_RS ORDER BY SmartList_Name ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE SmartList_Name BETWEEN @SmartList_Name_RS AND @SmartList_Name_RE ORDER BY SmartList_Name ASC, DEX_ROW_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10000F_2] TO [DYNGRP]
GO
