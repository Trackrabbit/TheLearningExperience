SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9101L_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, SC_DOMAIN, SC_USERNAME, SC_PASSWORD, URL, SC_CONFIG, DEX_ROW_ID FROM .SC9101 ORDER BY SETUPKEY DESC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, SC_DOMAIN, SC_USERNAME, SC_PASSWORD, URL, SC_CONFIG, DEX_ROW_ID FROM .SC9101 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY DESC END ELSE BEGIN SELECT TOP 25  SETUPKEY, SC_DOMAIN, SC_USERNAME, SC_PASSWORD, URL, SC_CONFIG, DEX_ROW_ID FROM .SC9101 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9101L_1] TO [DYNGRP]
GO
