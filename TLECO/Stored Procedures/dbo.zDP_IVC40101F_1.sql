SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC40101F_1] (@DOCTYPE_RS smallint, @DOCTYPE_RE smallint) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 ORDER BY DOCTYPE ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE DOCTYPE = @DOCTYPE_RS ORDER BY DOCTYPE ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE ORDER BY DOCTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC40101F_1] TO [DYNGRP]
GO
