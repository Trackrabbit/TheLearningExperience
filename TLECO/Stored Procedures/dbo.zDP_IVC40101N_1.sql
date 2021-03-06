SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC40101N_1] (@BS int, @DOCTYPE smallint, @DOCTYPE_RS smallint, @DOCTYPE_RE smallint) AS  set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE ( DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE DOCTYPE = @DOCTYPE_RS AND ( DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND ( DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC40101N_1] TO [DYNGRP]
GO
