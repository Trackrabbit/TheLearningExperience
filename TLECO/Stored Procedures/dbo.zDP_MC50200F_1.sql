SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC50200F_1] (@USERID_RS char(15), @CURNCYID_RS char(15), @USERID_RE char(15), @CURNCYID_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC50200 ORDER BY USERID ASC, CURNCYID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC50200 WHERE USERID = @USERID_RS AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY USERID ASC, CURNCYID ASC END ELSE BEGIN SELECT TOP 25  USERID, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC50200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY USERID ASC, CURNCYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC50200F_1] TO [DYNGRP]
GO
