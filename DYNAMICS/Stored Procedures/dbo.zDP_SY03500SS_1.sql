SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY03500SS_1] (@SITENAME char(81)) AS  set nocount on SELECT TOP 1  SITENAME, REGNKEYS_1, REGNKEYS_2, REGNKEYS_3, REGNKEYS_4, REGNKEYS_5, SiteAccountNumber, DEX_ROW_ID FROM .SY03500 WHERE SITENAME = @SITENAME ORDER BY SITENAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03500SS_1] TO [DYNGRP]
GO
