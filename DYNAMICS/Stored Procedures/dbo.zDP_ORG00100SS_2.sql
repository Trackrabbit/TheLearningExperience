SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ORG00100SS_2] (@PARNTRLTID int, @RELID int) AS  set nocount on SELECT TOP 1  RELID, PARNTRLTID, RELSTRNG, ENTITYID, DEX_ROW_ID FROM .ORG00100 WHERE PARNTRLTID = @PARNTRLTID AND RELID = @RELID ORDER BY PARNTRLTID ASC, RELID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORG00100SS_2] TO [DYNGRP]
GO
