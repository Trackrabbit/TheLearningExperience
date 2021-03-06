SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM40102L_1] (@DOCTYPE_RS smallint, @DOCTYPE_RE smallint) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, DOCABREV, DOCTYNAM, DEX_ROW_ID FROM .PM40102 ORDER BY DOCTYPE DESC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, DOCABREV, DOCTYNAM, DEX_ROW_ID FROM .PM40102 WHERE DOCTYPE = @DOCTYPE_RS ORDER BY DOCTYPE DESC END ELSE BEGIN SELECT TOP 25  DOCTYPE, DOCABREV, DOCTYNAM, DEX_ROW_ID FROM .PM40102 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY DOCTYPE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM40102L_1] TO [DYNGRP]
GO
