SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD40400N_1] (@BS int, @CMPANYID smallint, @DDDESC10 char(11), @INDXLONG int, @CMPANYID_RS smallint, @DDDESC10_RS char(11), @INDXLONG_RS int, @CMPANYID_RE smallint, @DDDESC10_RE char(11), @INDXLONG_RE int) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, DDDESC10, INDXLONG, DDLINE, DEX_ROW_ID FROM .DD40400 WHERE ( CMPANYID = @CMPANYID AND DDDESC10 = @DDDESC10 AND INDXLONG > @INDXLONG OR CMPANYID = @CMPANYID AND DDDESC10 > @DDDESC10 OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, DDDESC10 ASC, INDXLONG ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, DDDESC10, INDXLONG, DDLINE, DEX_ROW_ID FROM .DD40400 WHERE CMPANYID = @CMPANYID_RS AND DDDESC10 BETWEEN @DDDESC10_RS AND @DDDESC10_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND ( CMPANYID = @CMPANYID AND DDDESC10 = @DDDESC10 AND INDXLONG > @INDXLONG OR CMPANYID = @CMPANYID AND DDDESC10 > @DDDESC10 OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, DDDESC10 ASC, INDXLONG ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, DDDESC10, INDXLONG, DDLINE, DEX_ROW_ID FROM .DD40400 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND DDDESC10 BETWEEN @DDDESC10_RS AND @DDDESC10_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE AND ( CMPANYID = @CMPANYID AND DDDESC10 = @DDDESC10 AND INDXLONG > @INDXLONG OR CMPANYID = @CMPANYID AND DDDESC10 > @DDDESC10 OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, DDDESC10 ASC, INDXLONG ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD40400N_1] TO [DYNGRP]
GO