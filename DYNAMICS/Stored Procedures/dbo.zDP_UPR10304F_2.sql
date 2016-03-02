SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10304F_2] (@CMPANYID_RS smallint, @USERID_RS char(15), @CMPANYID_RE smallint, @USERID_RE char(15)) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 ORDER BY CMPANYID ASC, USERID ASC, DEX_ROW_ID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE CMPANYID = @CMPANYID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY CMPANYID ASC, USERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY CMPANYID ASC, USERID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10304F_2] TO [DYNGRP]
GO