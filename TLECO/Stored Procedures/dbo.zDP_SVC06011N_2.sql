SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06011N_2] (@BS int, @STATIONID char(11), @DEX_ROW_ID int, @STATIONID_RS char(11), @STATIONID_RE char(11)) AS  set nocount on IF @STATIONID_RS IS NULL BEGIN SELECT TOP 25  ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX, DEX_ROW_ID FROM .SVC06011 WHERE ( STATIONID = @STATIONID AND DEX_ROW_ID > @DEX_ROW_ID OR STATIONID > @STATIONID ) ORDER BY STATIONID ASC, DEX_ROW_ID ASC END ELSE IF @STATIONID_RS = @STATIONID_RE BEGIN SELECT TOP 25  ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX, DEX_ROW_ID FROM .SVC06011 WHERE STATIONID = @STATIONID_RS AND ( STATIONID = @STATIONID AND DEX_ROW_ID > @DEX_ROW_ID OR STATIONID > @STATIONID ) ORDER BY STATIONID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX, DEX_ROW_ID FROM .SVC06011 WHERE STATIONID BETWEEN @STATIONID_RS AND @STATIONID_RE AND ( STATIONID = @STATIONID AND DEX_ROW_ID > @DEX_ROW_ID OR STATIONID > @STATIONID ) ORDER BY STATIONID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06011N_2] TO [DYNGRP]
GO
