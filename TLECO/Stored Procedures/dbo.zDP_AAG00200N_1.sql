SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00200N_1] (@BS int, @ACTINDX int, @ACTINDX_RS int, @ACTINDX_RE int) AS  set nocount on IF @ACTINDX_RS IS NULL BEGIN SELECT TOP 25  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 WHERE ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC END ELSE IF @ACTINDX_RS = @ACTINDX_RE BEGIN SELECT TOP 25  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 WHERE ACTINDX = @ACTINDX_RS AND ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC END ELSE BEGIN SELECT TOP 25  ACTINDX, aaAcctClassID, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG00200 WHERE ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( ACTINDX > @ACTINDX ) ORDER BY ACTINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00200N_1] TO [DYNGRP]
GO
