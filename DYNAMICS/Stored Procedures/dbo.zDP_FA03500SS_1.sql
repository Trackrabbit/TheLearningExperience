SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_FA03500SS_1] (@SITENAME char(81)) AS  set nocount on SELECT TOP 1  SITENAME, FAREGNKEYS_1, FAREGNKEYS_2, FAREGNKEYS_3, FAREGNKEYS_4, FAREGNKEYS_5, DEX_ROW_ID FROM .FA03500 WHERE SITENAME = @SITENAME ORDER BY SITENAME ASC set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_FA03500SS_1] TO [DYNGRP]
GO
