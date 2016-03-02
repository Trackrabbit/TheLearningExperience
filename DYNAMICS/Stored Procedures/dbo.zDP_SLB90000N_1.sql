SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB90000N_1] (@BS int, @GoTo_Type smallint, @GoTo_Type_RS smallint, @GoTo_Type_RE smallint) AS set nocount on IF @GoTo_Type_RS IS NULL BEGIN SELECT TOP 25  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE ( GoTo_Type > @GoTo_Type ) ORDER BY GoTo_Type ASC END ELSE IF @GoTo_Type_RS = @GoTo_Type_RE BEGIN SELECT TOP 25  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE GoTo_Type = @GoTo_Type_RS AND ( GoTo_Type > @GoTo_Type ) ORDER BY GoTo_Type ASC END ELSE BEGIN SELECT TOP 25  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE GoTo_Type BETWEEN @GoTo_Type_RS AND @GoTo_Type_RE AND ( GoTo_Type > @GoTo_Type ) ORDER BY GoTo_Type ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB90000N_1] TO [DYNGRP]
GO
