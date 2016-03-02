SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10000F_4] (@PRODID_RS smallint, @Series_Number_RS smallint, @SmartList_ID_RS char(15), @PRODID_RE smallint, @Series_Number_RE smallint, @SmartList_ID_RE char(15)) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 ORDER BY PRODID ASC, Series_Number ASC, SmartList_ID ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE PRODID = @PRODID_RS AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE ORDER BY PRODID ASC, Series_Number ASC, SmartList_ID ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, SmartList_Name, SmartList_Item_Name, SmartList_Number, GoTo_Number, Summary_SmartList_CB, PRODID, Series_Number, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, DEX_ROW_ID, TXTFIELD FROM .SLB10000 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE ORDER BY PRODID ASC, Series_Number ASC, SmartList_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10000F_4] TO [DYNGRP]
GO
