SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11000SS_2] (@SmartList_ID char(15), @Table_Number smallint, @PRODID smallint, @TABLTECH char(79)) AS set nocount on SELECT TOP 1  SmartList_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .SLB11000 WHERE SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND PRODID = @PRODID AND TABLTECH = @TABLTECH ORDER BY SmartList_ID ASC, Table_Number ASC, PRODID ASC, TABLTECH ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11000SS_2] TO [DYNGRP]
GO
