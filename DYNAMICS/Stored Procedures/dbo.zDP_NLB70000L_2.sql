SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70000L_2] (@PRODID_RS smallint, @Series_Number_RS smallint, @Action_Type_RS smallint, @PRODID_RE smallint, @Series_Number_RE smallint, @Action_Type_RE smallint) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog, DEX_ROW_ID FROM .NLB70000 ORDER BY PRODID DESC, Series_Number DESC, Action_Type DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog, DEX_ROW_ID FROM .NLB70000 WHERE PRODID = @PRODID_RS AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND Action_Type BETWEEN @Action_Type_RS AND @Action_Type_RE ORDER BY PRODID DESC, Series_Number DESC, Action_Type DESC END ELSE BEGIN SELECT TOP 25  Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog, DEX_ROW_ID FROM .NLB70000 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND Action_Type BETWEEN @Action_Type_RS AND @Action_Type_RE ORDER BY PRODID DESC, Series_Number DESC, Action_Type DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70000L_2] TO [DYNGRP]
GO
