SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10700SS_2] (@EMPLOYID char(15), @INDXLONG int) AS  set nocount on SELECT TOP 1  INDXLONG, EMPLOYID, DDTRANUM, DDACTNUM, DDTRANS, DDAMTDLR, AMNTOPST, DDITEM, ERRDESCR, USERID, DEX_ROW_ID FROM .DD10700 WHERE EMPLOYID = @EMPLOYID AND INDXLONG = @INDXLONG ORDER BY EMPLOYID ASC, INDXLONG ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10700SS_2] TO [DYNGRP]
GO
