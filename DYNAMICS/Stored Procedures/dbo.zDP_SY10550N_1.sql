SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY10550N_1] (@BS int, @USERID char(15), @CMPANYID smallint, @USERID_RS char(15), @CMPANYID_RS smallint, @USERID_RE char(15), @CMPANYID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPANYID, SECMODALTID, DEX_ROW_ID FROM .SY10550 WHERE ( USERID = @USERID AND CMPANYID > @CMPANYID OR USERID > @USERID ) ORDER BY USERID ASC, CMPANYID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CMPANYID, SECMODALTID, DEX_ROW_ID FROM .SY10550 WHERE USERID = @USERID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( USERID = @USERID AND CMPANYID > @CMPANYID OR USERID > @USERID ) ORDER BY USERID ASC, CMPANYID ASC END ELSE BEGIN SELECT TOP 25  USERID, CMPANYID, SECMODALTID, DEX_ROW_ID FROM .SY10550 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( USERID = @USERID AND CMPANYID > @CMPANYID OR USERID > @USERID ) ORDER BY USERID ASC, CMPANYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY10550N_1] TO [DYNGRP]
GO
