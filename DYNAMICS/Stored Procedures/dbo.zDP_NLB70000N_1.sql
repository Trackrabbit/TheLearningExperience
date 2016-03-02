SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70000N_1] (@BS int, @Action_Type smallint, @Action_Type_RS smallint, @Action_Type_RE smallint) AS set nocount on IF @Action_Type_RS IS NULL BEGIN SELECT TOP 25  Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog, DEX_ROW_ID FROM .NLB70000 WHERE ( Action_Type > @Action_Type ) ORDER BY Action_Type ASC END ELSE IF @Action_Type_RS = @Action_Type_RE BEGIN SELECT TOP 25  Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog, DEX_ROW_ID FROM .NLB70000 WHERE Action_Type = @Action_Type_RS AND ( Action_Type > @Action_Type ) ORDER BY Action_Type ASC END ELSE BEGIN SELECT TOP 25  Action_Type, PRODID, Series_Number, Action_Description, Selection_Type, Drop_Dialog, DEX_ROW_ID FROM .NLB70000 WHERE Action_Type BETWEEN @Action_Type_RS AND @Action_Type_RE AND ( Action_Type > @Action_Type ) ORDER BY Action_Type ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70000N_1] TO [DYNGRP]
GO
