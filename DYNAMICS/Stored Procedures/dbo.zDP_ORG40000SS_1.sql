SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ORG40000SS_1] (@ENTYLVL smallint) AS  set nocount on SELECT TOP 1  ENTYLVL, LVLLABEL, DEX_ROW_ID FROM .ORG40000 WHERE ENTYLVL = @ENTYLVL ORDER BY ENTYLVL ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORG40000SS_1] TO [DYNGRP]
GO