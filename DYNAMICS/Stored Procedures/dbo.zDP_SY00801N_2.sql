SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY00801N_2] (@BS int, @USERID char(15), @CMPANYID smallint, @DEX_ROW_ID int, @USERID_RS char(15), @CMPANYID_RS smallint, @USERID_RE char(15), @CMPANYID_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT, DEX_ROW_ID FROM .SY00801 WHERE ( USERID = @USERID AND CMPANYID = @CMPANYID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CMPANYID > @CMPANYID OR USERID > @USERID ) ORDER BY USERID ASC, CMPANYID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT, DEX_ROW_ID FROM .SY00801 WHERE USERID = @USERID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( USERID = @USERID AND CMPANYID = @CMPANYID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CMPANYID > @CMPANYID OR USERID > @USERID ) ORDER BY USERID ASC, CMPANYID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT, DEX_ROW_ID FROM .SY00801 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND ( USERID = @USERID AND CMPANYID = @CMPANYID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND CMPANYID > @CMPANYID OR USERID > @USERID ) ORDER BY USERID ASC, CMPANYID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00801N_2] TO [DYNGRP]
GO
