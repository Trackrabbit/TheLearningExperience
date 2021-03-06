SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD30101SS_4] (@EMPLOYID char(15), @CHEKNMBR char(21)) AS  set nocount on SELECT TOP 1  INDXLONG, DDITEM, CHEKNMBR, EMPLOYID, DDTRANS, DDTRANUM, DDACTNUM, DDAMTDLR, DDTRACE, DEX_ROW_ID FROM .DD30101 WHERE EMPLOYID = @EMPLOYID AND CHEKNMBR = @CHEKNMBR ORDER BY EMPLOYID ASC, CHEKNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD30101SS_4] TO [DYNGRP]
GO
