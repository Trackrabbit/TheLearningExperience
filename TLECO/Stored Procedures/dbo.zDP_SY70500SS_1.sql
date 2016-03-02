SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY70500SS_1] (@RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5)) AS  set nocount on SELECT TOP 1  STDPSSRS, ENDPSERS, STSERVID, ENDSRVID, FINRPTNM, PRNTNOTS, PRNTTYPE, STRTCMNM, STRTZPCD, STWSTNTY, STTCATEG, ENDCATEG, ENDCMPNM, ENDZIPCD, ENDWSTYP, ASKECHTM, INCLGNDS, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, RPTGRIND, RTPACHIN, RTGRSBIN, SORTBY, RPTYPSEC, ENDUSRID, ENDUSRNM, ENDUSRCL, ENDINGDT, ENDTKNDT, ENDFRSRS, STTUSRID, STTUSRNM, STTUSRCL, STRTNGDT, STTOKNDT, STTFMSRS, STCURRID, ENDCURID, STCURRDESC, ENDCURRDESC, STEXTABID, ENDEXTABID, STEXTABDESC, ENDEXTABDESC, STICID, ENDICID, STSECMODALTID, STSECROLEID, STSECTASKCAT, STSECTASKID, ENDSECMODALTID, ENDSECROLEID, ENDSECTASKCAT, ENDSECTASKID, IncludeInactiveUsers, DEX_ROW_ID FROM .SY70500 WHERE RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN = @RTGRSBIN ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70500SS_1] TO [DYNGRP]
GO