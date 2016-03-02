SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB90000SS_2] (@PRODID smallint, @GoTo_Number smallint) AS set nocount on SELECT TOP 1  GoTo_Type, PRODID, GoTo_Number, GoTo_Description, DEX_ROW_ID FROM .SLB90000 WHERE PRODID = @PRODID AND GoTo_Number = @GoTo_Number ORDER BY PRODID ASC, GoTo_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB90000SS_2] TO [DYNGRP]
GO
