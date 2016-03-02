SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB11000SS_2] (@Navigation_ID char(15), @Table_Number smallint, @PRODID smallint, @TABLTECH char(79)) AS set nocount on SELECT TOP 1  Navigation_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .NLB11000 WHERE Navigation_ID = @Navigation_ID AND Table_Number = @Table_Number AND PRODID = @PRODID AND TABLTECH = @TABLTECH ORDER BY Navigation_ID ASC, Table_Number ASC, PRODID ASC, TABLTECH ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB11000SS_2] TO [DYNGRP]
GO
