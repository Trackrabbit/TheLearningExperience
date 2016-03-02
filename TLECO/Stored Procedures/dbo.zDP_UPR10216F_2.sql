SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10216F_2] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  USERID, CHEKNMBR, ERRDESCR, DEX_ROW_ID FROM .UPR10216 ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  USERID, CHEKNMBR, ERRDESCR, DEX_ROW_ID FROM .UPR10216 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, CHEKNMBR, ERRDESCR, DEX_ROW_ID FROM .UPR10216 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10216F_2] TO [DYNGRP]
GO
