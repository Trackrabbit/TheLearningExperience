SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00115SS_2] (@ITEMNMBR char(31), @PRIMARYITEM tinyint) AS  set nocount on SELECT TOP 1  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 WHERE ITEMNMBR = @ITEMNMBR AND PRIMARYITEM = @PRIMARYITEM ORDER BY ITEMNMBR ASC, PRIMARYITEM ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00115SS_2] TO [DYNGRP]
GO
