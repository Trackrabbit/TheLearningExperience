SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ORG00100SS_3] (@RELSTRNG char(31)) AS  set nocount on SELECT TOP 1  RELID, PARNTRLTID, RELSTRNG, ENTITYID, DEX_ROW_ID FROM .ORG00100 WHERE RELSTRNG = @RELSTRNG ORDER BY RELSTRNG ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORG00100SS_3] TO [DYNGRP]
GO
