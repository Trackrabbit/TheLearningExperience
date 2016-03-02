SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10304L_1] (@CMPANYID_RS smallint, @BACHNUMB_RS char(15), @UPRBCHOR_RS smallint, @USERID_RS char(15), @UPRBCHST_RS smallint, @CMPANYID_RE smallint, @BACHNUMB_RE char(15), @UPRBCHOR_RE smallint, @USERID_RE char(15), @UPRBCHST_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 ORDER BY CMPANYID DESC, BACHNUMB DESC, UPRBCHOR DESC, USERID DESC, UPRBCHST DESC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE CMPANYID = @CMPANYID_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND UPRBCHOR BETWEEN @UPRBCHOR_RS AND @UPRBCHOR_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND UPRBCHST BETWEEN @UPRBCHST_RS AND @UPRBCHST_RE ORDER BY CMPANYID DESC, BACHNUMB DESC, UPRBCHOR DESC, USERID DESC, UPRBCHST DESC END ELSE BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND UPRBCHOR BETWEEN @UPRBCHOR_RS AND @UPRBCHOR_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND UPRBCHST BETWEEN @UPRBCHST_RS AND @UPRBCHST_RE ORDER BY CMPANYID DESC, BACHNUMB DESC, UPRBCHOR DESC, USERID DESC, UPRBCHST DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10304L_1] TO [DYNGRP]
GO
