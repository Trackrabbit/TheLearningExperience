SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70000SS_2] (@PRODID smallint, @Series_Number smallint, @Action_Type smallint) AS set nocount on SELECT TOP 1  Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog, DEX_ROW_ID FROM .NLB70000 WHERE PRODID = @PRODID AND Series_Number = @Series_Number AND Action_Type = @Action_Type ORDER BY PRODID ASC, Series_Number ASC, Action_Type ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70000SS_2] TO [DYNGRP]
GO
