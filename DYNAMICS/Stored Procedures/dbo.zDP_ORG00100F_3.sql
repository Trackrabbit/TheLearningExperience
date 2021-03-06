SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ORG00100F_3] (@RELSTRNG_RS char(31), @RELSTRNG_RE char(31)) AS  set nocount on IF @RELSTRNG_RS IS NULL BEGIN SELECT TOP 25  RELID, PARNTRLTID, RELSTRNG, ENTITYID, DEX_ROW_ID FROM .ORG00100 ORDER BY RELSTRNG ASC END ELSE IF @RELSTRNG_RS = @RELSTRNG_RE BEGIN SELECT TOP 25  RELID, PARNTRLTID, RELSTRNG, ENTITYID, DEX_ROW_ID FROM .ORG00100 WHERE RELSTRNG = @RELSTRNG_RS ORDER BY RELSTRNG ASC END ELSE BEGIN SELECT TOP 25  RELID, PARNTRLTID, RELSTRNG, ENTITYID, DEX_ROW_ID FROM .ORG00100 WHERE RELSTRNG BETWEEN @RELSTRNG_RS AND @RELSTRNG_RE ORDER BY RELSTRNG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ORG00100F_3] TO [DYNGRP]
GO
