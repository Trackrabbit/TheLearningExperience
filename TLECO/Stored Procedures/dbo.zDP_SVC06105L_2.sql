SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06105L_2] (@WORECTYPE_RS smallint, @WORKORDNUM_RS char(11), @Status_RS smallint, @SEQUENCE1_RS numeric(19,5), @WORECTYPE_RE smallint, @WORKORDNUM_RE char(11), @Status_RE smallint, @SEQUENCE1_RE numeric(19,5)) AS  set nocount on IF @WORECTYPE_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, Status, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, STRTDATE, STRTTIME, ENDDATE, ENDTIME, ETADTE, ETATME, ECOMPDT, EComp_Time, NOTEINDX, DEX_ROW_ID FROM .SVC06105 ORDER BY WORECTYPE DESC, WORKORDNUM DESC, Status ASC, SEQUENCE1 DESC, DEX_ROW_ID DESC END ELSE IF @WORECTYPE_RS = @WORECTYPE_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, Status, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, STRTDATE, STRTTIME, ENDDATE, ENDTIME, ETADTE, ETATME, ECOMPDT, EComp_Time, NOTEINDX, DEX_ROW_ID FROM .SVC06105 WHERE WORECTYPE = @WORECTYPE_RS AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND Status BETWEEN @Status_RE AND @Status_RS AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY WORECTYPE DESC, WORKORDNUM DESC, Status ASC, SEQUENCE1 DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, Status, SEQUENCE1, DSCRIPTN, DEPSTATGRP, STATIONID, TECHID, ETTR, ROUTEPROC, SERVICEBOM, STRTDATE, STRTTIME, ENDDATE, ENDTIME, ETADTE, ETATME, ECOMPDT, EComp_Time, NOTEINDX, DEX_ROW_ID FROM .SVC06105 WHERE WORECTYPE BETWEEN @WORECTYPE_RS AND @WORECTYPE_RE AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND Status BETWEEN @Status_RE AND @Status_RS AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY WORECTYPE DESC, WORKORDNUM DESC, Status ASC, SEQUENCE1 DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06105L_2] TO [DYNGRP]
GO
