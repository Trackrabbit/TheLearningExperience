SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PC70100N_1] (@BS int, @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @RPTGRIND_RS smallint, @RTPACHIN_RS smallint, @RTGRSBIN_RS numeric(19,5), @RPTGRIND_RE smallint, @RTPACHIN_RE smallint, @RTGRSBIN_RE numeric(19,5)) AS  set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  RPTGRIND, RTPACHIN, RTGRSBIN, RPRTNAME, PRNTNOTS, PRNTTYPE, ASKECHTM, INCLGNDS, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, SORTBY, STRTDATE, ENDDATE, POSSTATUS, HRSTATUS, EMPLTYPE, EEOCLASS_I, FLSASTATUS, SHOWINACTIVE, STRTCHANGEDT, STTUSRID, STRTDEPT, STRDIVISIONCODE, STTEMPCL, STTEMPID, STTLOCID, STARTPLAN, STTJBTIT, STRTRPTPOS, STRTSPRVSRCD, ENDCHANGEDT, ENDUSRID, ENDDEPT, ENDDIVISIONCODE, ENEMPCLS, ENDEMPL, ENDLOCID, ENDPLAN, ENJBTITL, ENDRPTPOS, ENDSPRVSRCD, RANGEBY, ASSIGNMENTSTATUS, INHERITSTATUS, SEATTYPE, DEX_ROW_ID FROM .PC70100 WHERE ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  RPTGRIND, RTPACHIN, RTGRSBIN, RPRTNAME, PRNTNOTS, PRNTTYPE, ASKECHTM, INCLGNDS, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, SORTBY, STRTDATE, ENDDATE, POSSTATUS, HRSTATUS, EMPLTYPE, EEOCLASS_I, FLSASTATUS, SHOWINACTIVE, STRTCHANGEDT, STTUSRID, STRTDEPT, STRDIVISIONCODE, STTEMPCL, STTEMPID, STTLOCID, STARTPLAN, STTJBTIT, STRTRPTPOS, STRTSPRVSRCD, ENDCHANGEDT, ENDUSRID, ENDDEPT, ENDDIVISIONCODE, ENEMPCLS, ENDEMPL, ENDLOCID, ENDPLAN, ENJBTITL, ENDRPTPOS, ENDSPRVSRCD, RANGEBY, ASSIGNMENTSTATUS, INHERITSTATUS, SEATTYPE, DEX_ROW_ID FROM .PC70100 WHERE RPTGRIND = @RPTGRIND_RS AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE BEGIN SELECT TOP 25  RPTGRIND, RTPACHIN, RTGRSBIN, RPRTNAME, PRNTNOTS, PRNTTYPE, ASKECHTM, INCLGNDS, PRNTOFIL, PRTOPRTR, PRTOSCRN, IFFILXST, FILEXPNM, EXPTTYPE, SORTBY, STRTDATE, ENDDATE, POSSTATUS, HRSTATUS, EMPLTYPE, EEOCLASS_I, FLSASTATUS, SHOWINACTIVE, STRTCHANGEDT, STTUSRID, STRTDEPT, STRDIVISIONCODE, STTEMPCL, STTEMPID, STTLOCID, STARTPLAN, STTJBTIT, STRTRPTPOS, STRTSPRVSRCD, ENDCHANGEDT, ENDUSRID, ENDDEPT, ENDDIVISIONCODE, ENEMPCLS, ENDEMPL, ENDLOCID, ENDPLAN, ENJBTITL, ENDRPTPOS, ENDSPRVSRCD, RANGEBY, ASSIGNMENTSTATUS, INHERITSTATUS, SEATTYPE, DEX_ROW_ID FROM .PC70100 WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PC70100N_1] TO [DYNGRP]
GO