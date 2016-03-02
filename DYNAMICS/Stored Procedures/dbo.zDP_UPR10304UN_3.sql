SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR10304UN_3] (@BS int, @CMPANYID smallint, @BACHNUMB char(15), @UPRBCHOR smallint, @UPRBCHST smallint, @CMPANYID_RS smallint, @BACHNUMB_RS char(15), @UPRBCHOR_RS smallint, @UPRBCHST_RS smallint, @CMPANYID_RE smallint, @BACHNUMB_RE char(15), @UPRBCHOR_RE smallint, @UPRBCHST_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE ( CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR = @UPRBCHOR AND UPRBCHST > @UPRBCHST OR CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR > @UPRBCHOR OR CMPANYID = @CMPANYID AND BACHNUMB > @BACHNUMB OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, BACHNUMB ASC, UPRBCHOR ASC, UPRBCHST ASC, DEX_ROW_ID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE CMPANYID = @CMPANYID_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND UPRBCHOR BETWEEN @UPRBCHOR_RS AND @UPRBCHOR_RE AND UPRBCHST BETWEEN @UPRBCHST_RS AND @UPRBCHST_RE AND ( CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR = @UPRBCHOR AND UPRBCHST > @UPRBCHST OR CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR > @UPRBCHOR OR CMPANYID = @CMPANYID AND BACHNUMB > @BACHNUMB OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, BACHNUMB ASC, UPRBCHOR ASC, UPRBCHST ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, BACHNUMB, UPRBCHOR, USERID, UPRBCHST, DEX_ROW_ID FROM .UPR10304 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND UPRBCHOR BETWEEN @UPRBCHOR_RS AND @UPRBCHOR_RE AND UPRBCHST BETWEEN @UPRBCHST_RS AND @UPRBCHST_RE AND ( CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR = @UPRBCHOR AND UPRBCHST > @UPRBCHST OR CMPANYID = @CMPANYID AND BACHNUMB = @BACHNUMB AND UPRBCHOR > @UPRBCHOR OR CMPANYID = @CMPANYID AND BACHNUMB > @BACHNUMB OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, BACHNUMB ASC, UPRBCHOR ASC, UPRBCHST ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10304UN_3] TO [DYNGRP]
GO
