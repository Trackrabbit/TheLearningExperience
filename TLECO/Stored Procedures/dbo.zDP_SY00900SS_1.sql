SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY00900SS_1] (@SOURCDOC char(11)) AS  set nocount on SELECT TOP 1  SOURCDOC, SDOCDSCR, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY00900 WHERE SOURCDOC = @SOURCDOC ORDER BY SOURCDOC ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00900SS_1] TO [DYNGRP]
GO