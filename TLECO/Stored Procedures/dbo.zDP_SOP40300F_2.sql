SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP40300F_2] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, DOCTYABR, DOCTYNAM, SOPNUMBE, DOCUFORM, SETUPKEY, DEX_ROW_ID FROM .SOP40300 ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SOPTYPE, DOCTYABR, DOCTYNAM, SOPNUMBE, DOCUFORM, SETUPKEY, DEX_ROW_ID FROM .SOP40300 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, DOCTYABR, DOCTYNAM, SOPNUMBE, DOCUFORM, SETUPKEY, DEX_ROW_ID FROM .SOP40300 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP40300F_2] TO [DYNGRP]
GO
