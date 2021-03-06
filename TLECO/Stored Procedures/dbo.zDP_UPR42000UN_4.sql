SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42000UN_4] (@BS int, @STATUSTYPE smallint, @STSDESCR char(31), @STATUSTYPE_RS smallint, @STSDESCR_RS char(31), @STATUSTYPE_RE smallint, @STSDESCR_RE char(31)) AS  set nocount on IF @STATUSTYPE_RS IS NULL BEGIN SELECT TOP 25  STATUSCD, STSDESCR, STATUSTYPE, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR42000 WHERE ( STATUSTYPE = @STATUSTYPE AND STSDESCR > @STSDESCR OR STATUSTYPE > @STATUSTYPE ) ORDER BY STATUSTYPE ASC, STSDESCR ASC, DEX_ROW_ID ASC END ELSE IF @STATUSTYPE_RS = @STATUSTYPE_RE BEGIN SELECT TOP 25  STATUSCD, STSDESCR, STATUSTYPE, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR42000 WHERE STATUSTYPE = @STATUSTYPE_RS AND STSDESCR BETWEEN @STSDESCR_RS AND @STSDESCR_RE AND ( STATUSTYPE = @STATUSTYPE AND STSDESCR > @STSDESCR OR STATUSTYPE > @STATUSTYPE ) ORDER BY STATUSTYPE ASC, STSDESCR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  STATUSCD, STSDESCR, STATUSTYPE, INACTIVE, NOTEINDX, DEX_ROW_ID FROM .UPR42000 WHERE STATUSTYPE BETWEEN @STATUSTYPE_RS AND @STATUSTYPE_RE AND STSDESCR BETWEEN @STSDESCR_RS AND @STSDESCR_RE AND ( STATUSTYPE = @STATUSTYPE AND STSDESCR > @STSDESCR OR STATUSTYPE > @STATUSTYPE ) ORDER BY STATUSTYPE ASC, STSDESCR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42000UN_4] TO [DYNGRP]
GO
