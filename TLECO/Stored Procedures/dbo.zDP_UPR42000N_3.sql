SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42000N_3] (@BS int, @STATUSTYPE smallint, @STATUSCD char(15), @STATUSTYPE_RS smallint, @STATUSCD_RS char(15), @STATUSTYPE_RE smallint, @STATUSCD_RE char(15)) AS  set nocount on IF @STATUSTYPE_RS IS NULL BEGIN SELECT TOP 25  STATUSCD, STSDESCR, STATUSTYPE, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR42000 WHERE ( STATUSTYPE = @STATUSTYPE AND STATUSCD > @STATUSCD OR STATUSTYPE > @STATUSTYPE ) ORDER BY STATUSTYPE ASC, STATUSCD ASC END ELSE IF @STATUSTYPE_RS = @STATUSTYPE_RE BEGIN SELECT TOP 25  STATUSCD, STSDESCR, STATUSTYPE, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR42000 WHERE STATUSTYPE = @STATUSTYPE_RS AND STATUSCD BETWEEN @STATUSCD_RS AND @STATUSCD_RE AND ( STATUSTYPE = @STATUSTYPE AND STATUSCD > @STATUSCD OR STATUSTYPE > @STATUSTYPE ) ORDER BY STATUSTYPE ASC, STATUSCD ASC END ELSE BEGIN SELECT TOP 25  STATUSCD, STSDESCR, STATUSTYPE, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR42000 WHERE STATUSTYPE BETWEEN @STATUSTYPE_RS AND @STATUSTYPE_RE AND STATUSCD BETWEEN @STATUSCD_RS AND @STATUSCD_RE AND ( STATUSTYPE = @STATUSTYPE AND STATUSCD > @STATUSCD OR STATUSTYPE > @STATUSTYPE ) ORDER BY STATUSTYPE ASC, STATUSCD ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42000N_3] TO [DYNGRP]
GO