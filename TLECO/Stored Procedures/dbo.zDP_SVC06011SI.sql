SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06011SI] (@ROUTEID char(11), @SEQUENCE1 numeric(19,5), @DSCRIPTN char(31), @DEPSTATGRP char(11), @STATIONID char(11), @TECHID char(11), @ETTR numeric(19,5), @ROUTEPROC char(11), @SERVICEBOM char(31), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC06011 (ROUTEID, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, NOTEINDX) VALUES ( @ROUTEID, @SEQUENCE1, @DSCRIPTN, @DEPSTATGRP, @STATIONID, @TECHID, @ETTR, @ROUTEPROC, @SERVICEBOM, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06011SI] TO [DYNGRP]
GO