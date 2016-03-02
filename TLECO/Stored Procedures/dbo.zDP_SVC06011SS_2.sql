SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06011SS_2] (@STATIONID char(11)) AS  set nocount on SELECT TOP 1  ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX, DEX_ROW_ID FROM .SVC06011 WHERE STATIONID = @STATIONID ORDER BY STATIONID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06011SS_2] TO [DYNGRP]
GO