SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40600SS_1] (@CURNCYID char(15)) AS  set nocount on SELECT TOP 1  CURNCYID, DECPLCUR, DEX_ROW_ID FROM .POP40600 WHERE CURNCYID = @CURNCYID ORDER BY CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40600SS_1] TO [DYNGRP]
GO