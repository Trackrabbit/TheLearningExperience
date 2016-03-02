SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00115SS_1] (@ITEMNMBR char(31), @MANUFACTURER char(31), @MNFCTRITMNMBR char(31), @PRIMARYITEM tinyint) AS  set nocount on SELECT TOP 1  ITEMNMBR, MANUFACTURER, MNFCTRITMNMBR, ITEMDESC, PRIMARYITEM, DEX_ROW_ID FROM .IV00115 WHERE ITEMNMBR = @ITEMNMBR AND MANUFACTURER = @MANUFACTURER AND MNFCTRITMNMBR = @MNFCTRITMNMBR AND PRIMARYITEM = @PRIMARYITEM ORDER BY ITEMNMBR ASC, MANUFACTURER ASC, MNFCTRITMNMBR ASC, PRIMARYITEM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00115SS_1] TO [DYNGRP]
GO
