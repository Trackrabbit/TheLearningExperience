SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB90000SS_3] (@PRODID smallint, @GoTo_Description char(81)) AS set nocount on SELECT TOP 1  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE PRODID = @PRODID AND GoTo_Description = @GoTo_Description ORDER BY PRODID ASC, GoTo_Description ASC, DEX_ROW_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB90000SS_3] TO [DYNGRP]
GO
