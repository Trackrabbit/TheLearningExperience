SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41400SS_2] (@DSCRIPTN char(31)) AS  set nocount on SELECT TOP 1  Password_ID, DSCRIPTN, PASSWORD, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID FROM .WDC41400 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41400SS_2] TO [DYNGRP]
GO
