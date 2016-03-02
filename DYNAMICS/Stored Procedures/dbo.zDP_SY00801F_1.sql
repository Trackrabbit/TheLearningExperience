SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY00801F_1] (@RULEID_RS smallint, @CMPANYID_RS smallint, @RSRCID_RS char(31), @RSRCSBID_RS char(21), @USERID_RS char(15), @RULEID_RE smallint, @CMPANYID_RE smallint, @RSRCID_RE char(31), @RSRCSBID_RE char(21), @USERID_RE char(15)) AS  set nocount on IF @RULEID_RS IS NULL BEGIN SELECT TOP 25  RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT, DEX_ROW_ID FROM .SY00801 ORDER BY RULEID ASC, CMPANYID ASC, RSRCID ASC, RSRCSBID ASC, USERID ASC END ELSE IF @RULEID_RS = @RULEID_RE BEGIN SELECT TOP 25  RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT, DEX_ROW_ID FROM .SY00801 WHERE RULEID = @RULEID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND RSRCID BETWEEN @RSRCID_RS AND @RSRCID_RE AND RSRCSBID BETWEEN @RSRCSBID_RS AND @RSRCSBID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY RULEID ASC, CMPANYID ASC, RSRCID ASC, RSRCSBID ASC, USERID ASC END ELSE BEGIN SELECT TOP 25  RULEID, RSRCID, RSRCSBID, CMPANYID, USERID, RSCSTATE, RSRDESC, USECT, DEX_ROW_ID FROM .SY00801 WHERE RULEID BETWEEN @RULEID_RS AND @RULEID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND RSRCID BETWEEN @RSRCID_RS AND @RSRCID_RE AND RSRCSBID BETWEEN @RSRCSBID_RS AND @RSRCSBID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY RULEID ASC, CMPANYID ASC, RSRCID ASC, RSRCSBID ASC, USERID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY00801F_1] TO [DYNGRP]
GO
