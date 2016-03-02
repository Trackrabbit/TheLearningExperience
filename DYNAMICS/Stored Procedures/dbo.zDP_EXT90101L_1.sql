SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90101L_1] (@PRODID_RS smallint, @PRODID_RE smallint) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, PRODNAME, DEX_ROW_ID FROM .EXT90101 ORDER BY PRODID DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, PRODNAME, DEX_ROW_ID FROM .EXT90101 WHERE PRODID = @PRODID_RS ORDER BY PRODID DESC END ELSE BEGIN SELECT TOP 25  PRODID, PRODNAME, DEX_ROW_ID FROM .EXT90101 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE ORDER BY PRODID DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90101L_1] TO [DYNGRP]
GO
