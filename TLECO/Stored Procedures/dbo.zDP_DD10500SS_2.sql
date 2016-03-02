SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10500SS_2] (@EMPLOYID char(15), @INDXLONG int, @DDITEM smallint) AS  set nocount on SELECT TOP 1  INDXLONG, DDITEM, EMPLOYID, DDTRANS, DDTRANUM, DDACTNUM, DDAMTDLR, DDINDID, DDINDNAM, DDTRACE, DEX_ROW_ID FROM .DD10500 WHERE EMPLOYID = @EMPLOYID AND INDXLONG = @INDXLONG AND DDITEM = @DDITEM ORDER BY EMPLOYID ASC, INDXLONG ASC, DDITEM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10500SS_2] TO [DYNGRP]
GO