SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MEP40100F_1] (@PRODID_RS smallint, @PRODID_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, INDXLONG, PREVERSION, CURVERSION, UPDATEDDATE, CRUSRID, MESTATSTR, DEX_ROW_ID FROM .MEP40100 ORDER BY PRODID ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, INDXLONG, PREVERSION, CURVERSION, UPDATEDDATE, CRUSRID, MESTATSTR, DEX_ROW_ID FROM .MEP40100 WHERE PRODID = @PRODID_RS ORDER BY PRODID ASC END ELSE BEGIN SELECT TOP 25  PRODID, INDXLONG, PREVERSION, CURVERSION, UPDATEDDATE, CRUSRID, MESTATSTR, DEX_ROW_ID FROM .MEP40100 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE ORDER BY PRODID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MEP40100F_1] TO [DYNGRP]
GO
