SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD00100F_4] (@INACTIVE_RS tinyint, @DDREMAIN_RS int, @EMPLOYID_RS char(15), @INACTIVE_RE tinyint, @DDREMAIN_RE int, @EMPLOYID_RE char(15)) AS  set nocount on IF @INACTIVE_RS IS NULL BEGIN SELECT TOP 25  EMPLOYID, INACTIVE, DDREMAIN, INDXLONG, DEX_ROW_ID FROM .DD00100 ORDER BY INACTIVE ASC, DDREMAIN ASC, EMPLOYID ASC END ELSE IF @INACTIVE_RS = @INACTIVE_RE BEGIN SELECT TOP 25  EMPLOYID, INACTIVE, DDREMAIN, INDXLONG, DEX_ROW_ID FROM .DD00100 WHERE INACTIVE = @INACTIVE_RS AND DDREMAIN BETWEEN @DDREMAIN_RS AND @DDREMAIN_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY INACTIVE ASC, DDREMAIN ASC, EMPLOYID ASC END ELSE BEGIN SELECT TOP 25  EMPLOYID, INACTIVE, DDREMAIN, INDXLONG, DEX_ROW_ID FROM .DD00100 WHERE INACTIVE BETWEEN @INACTIVE_RS AND @INACTIVE_RE AND DDREMAIN BETWEEN @DDREMAIN_RS AND @DDREMAIN_RE AND EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE ORDER BY INACTIVE ASC, DDREMAIN ASC, EMPLOYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD00100F_4] TO [DYNGRP]
GO
