SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06011N_1] (@BS int, @ROUTEID char(11), @SEQUENCE1 numeric(19,5), @ROUTEID_RS char(11), @SEQUENCE1_RS numeric(19,5), @ROUTEID_RE char(11), @SEQUENCE1_RE numeric(19,5)) AS  set nocount on IF @ROUTEID_RS IS NULL BEGIN SELECT TOP 25  ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX, DEX_ROW_ID FROM .SVC06011 WHERE ( ROUTEID = @ROUTEID AND SEQUENCE1 > @SEQUENCE1 OR ROUTEID > @ROUTEID ) ORDER BY ROUTEID ASC, SEQUENCE1 ASC END ELSE IF @ROUTEID_RS = @ROUTEID_RE BEGIN SELECT TOP 25  ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX, DEX_ROW_ID FROM .SVC06011 WHERE ROUTEID = @ROUTEID_RS AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE AND ( ROUTEID = @ROUTEID AND SEQUENCE1 > @SEQUENCE1 OR ROUTEID > @ROUTEID ) ORDER BY ROUTEID ASC, SEQUENCE1 ASC END ELSE BEGIN SELECT TOP 25  ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX, DEX_ROW_ID FROM .SVC06011 WHERE ROUTEID BETWEEN @ROUTEID_RS AND @ROUTEID_RE AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE AND ( ROUTEID = @ROUTEID AND SEQUENCE1 > @SEQUENCE1 OR ROUTEID > @ROUTEID ) ORDER BY ROUTEID ASC, SEQUENCE1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06011N_1] TO [DYNGRP]
GO
