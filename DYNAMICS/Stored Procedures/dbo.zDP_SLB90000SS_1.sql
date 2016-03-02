SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB90000SS_1] (@GoTo_Type smallint) AS set nocount on SELECT TOP 1  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE GoTo_Type = @GoTo_Type ORDER BY GoTo_Type ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB90000SS_1] TO [DYNGRP]
GO
