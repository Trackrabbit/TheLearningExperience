SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP40800SS_1] (@LOCNCODE char(11)) AS  set nocount on SELECT TOP 1  LOCNCODE, ADRSCODE, DEX_ROW_ID FROM .POP40800 WHERE LOCNCODE = @LOCNCODE ORDER BY LOCNCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP40800SS_1] TO [DYNGRP]
GO
