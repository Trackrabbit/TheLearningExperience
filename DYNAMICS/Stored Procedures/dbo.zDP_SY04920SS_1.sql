SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY04920SS_1] (@USERID char(15), @Exchange_Address char(238)) AS  set nocount on SELECT TOP 1  USERID, Exchange_Address, Exchange_Server_URL, DEX_ROW_ID FROM .SY04920 WHERE USERID = @USERID AND Exchange_Address = @Exchange_Address ORDER BY USERID ASC, Exchange_Address ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04920SS_1] TO [DYNGRP]
GO
