SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX40101F_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, LSTCLSDT, DEX_ROW_ID FROM .TX40101 ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, LSTCLSDT, DEX_ROW_ID FROM .TX40101 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, LSTCLSDT, DEX_ROW_ID FROM .TX40101 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX40101F_1] TO [DYNGRP]
GO
