SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90101SS_1] (@PRODID smallint) AS set nocount on SELECT TOP 1  PRODID, PRODNAME, DEX_ROW_ID FROM .EXT90101 WHERE PRODID = @PRODID ORDER BY PRODID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90101SS_1] TO [DYNGRP]
GO
