SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_WDC41400SS_1] (@Password_ID char(15)) AS  set nocount on SELECT TOP 1  Password_ID, DSCRIPTN, PASSWORD, NOTEINDX, CREATDDT, MODIFDT, LSTUSRED, DEX_ROW_ID FROM .WDC41400 WHERE Password_ID = @Password_ID ORDER BY Password_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WDC41400SS_1] TO [DYNGRP]
GO
