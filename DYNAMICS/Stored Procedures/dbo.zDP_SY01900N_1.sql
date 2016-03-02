SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01900N_1] (@BS int, @CMPANYID smallint, @USERID char(15), @REPORTID smallint, @CMPANYID_RS smallint, @USERID_RS char(15), @REPORTID_RS smallint, @CMPANYID_RE smallint, @USERID_RE char(15), @REPORTID_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, USERID, REPORTID, DEX_ROW_ID FROM .SY01900 WHERE ( CMPANYID = @CMPANYID AND USERID = @USERID AND REPORTID > @REPORTID OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, REPORTID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, USERID, REPORTID, DEX_ROW_ID FROM .SY01900 WHERE CMPANYID = @CMPANYID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND REPORTID > @REPORTID OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, REPORTID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, USERID, REPORTID, DEX_ROW_ID FROM .SY01900 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND ( CMPANYID = @CMPANYID AND USERID = @USERID AND REPORTID > @REPORTID OR CMPANYID = @CMPANYID AND USERID > @USERID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, USERID ASC, REPORTID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01900N_1] TO [DYNGRP]
GO