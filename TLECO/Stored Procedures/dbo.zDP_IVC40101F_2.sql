SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC40101F_2] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, DOCTYABR, DOCTYNAM, INVCNMBR, SETUPKEY, DEX_ROW_ID FROM .IVC40101 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC40101F_2] TO [DYNGRP]
GO
