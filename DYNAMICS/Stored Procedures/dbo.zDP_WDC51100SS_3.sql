SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC51100SS_3] (@ACTIVE tinyint) AS  set nocount on SELECT TOP 1  WDC_Entity_ID, USRCLASS, CMPANYID, USERID, ACTIVE, DEX_ROW_ID FROM .WDC51100 WHERE ACTIVE = @ACTIVE ORDER BY ACTIVE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC51100SS_3] TO [DYNGRP]
GO
