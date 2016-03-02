SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_LK4000UN_2] (@BS int, @RPTGRIND smallint, @RTPACHIN smallint, @REPORTID smallint, @RTGRSBIN numeric(19,5), @RPTGRIND_RS smallint, @RTPACHIN_RS smallint, @REPORTID_RS smallint, @RTGRSBIN_RS numeric(19,5), @RPTGRIND_RE smallint, @RTPACHIN_RE smallint, @REPORTID_RE smallint, @RTGRSBIN_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  FINRPTNM, STACNMST, End_Account_Number_String, IFFILXST, ASKECHTM, LK_Start_Token_Date, LKEnd_Token_Date, PRRPTFOR, PRVYRCMB, PRTOSCRN, PRTOPRTR, EXPTTYPE, PRNTOFIL, FILEXPNM, RPTGRIND, RTGRSBIN, RTPACHIN, REPORTID, STRTNGDT, ENDINGDT, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STRTJRNL, ENDJRNAL, SSRCEDOC, ENDSRCDC, STRXSRC, LK_Start_Group, LK_End_Group, ENTRXSRC, Start_LK_Link_No, End_LK_Link_No, STRTDATE, ENDDATE, STTUSRID, ENDUSRID, SORTBY, LK_Link_Balance, Multicurrency_Information, DEX_ROW_ID FROM .LK4000 WHERE ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND REPORTID = @REPORTID AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND REPORTID > @REPORTID OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, REPORTID ASC, RTGRSBIN ASC, DEX_ROW_ID ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  FINRPTNM, STACNMST, End_Account_Number_String, IFFILXST, ASKECHTM, LK_Start_Token_Date, LKEnd_Token_Date, PRRPTFOR, PRVYRCMB, PRTOSCRN, PRTOPRTR, EXPTTYPE, PRNTOFIL, FILEXPNM, RPTGRIND, RTGRSBIN, RTPACHIN, REPORTID, STRTNGDT, ENDINGDT, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STRTJRNL, ENDJRNAL, SSRCEDOC, ENDSRCDC, STRXSRC, LK_Start_Group, LK_End_Group, ENTRXSRC, Start_LK_Link_No, End_LK_Link_No, STRTDATE, ENDDATE, STTUSRID, ENDUSRID, SORTBY, LK_Link_Balance, Multicurrency_Information, DEX_ROW_ID FROM .LK4000 WHERE RPTGRIND = @RPTGRIND_RS AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND REPORTID = @REPORTID AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND REPORTID > @REPORTID OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, REPORTID ASC, RTGRSBIN ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  FINRPTNM, STACNMST, End_Account_Number_String, IFFILXST, ASKECHTM, LK_Start_Token_Date, LKEnd_Token_Date, PRRPTFOR, PRVYRCMB, PRTOSCRN, PRTOPRTR, EXPTTYPE, PRNTOFIL, FILEXPNM, RPTGRIND, RTGRSBIN, RTPACHIN, REPORTID, STRTNGDT, ENDINGDT, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STRTJRNL, ENDJRNAL, SSRCEDOC, ENDSRCDC, STRXSRC, LK_Start_Group, LK_End_Group, ENTRXSRC, Start_LK_Link_No, End_LK_Link_No, STRTDATE, ENDDATE, STTUSRID, ENDUSRID, SORTBY, LK_Link_Balance, Multicurrency_Information, DEX_ROW_ID FROM .LK4000 WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND REPORTID BETWEEN @REPORTID_RS AND @REPORTID_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE AND ( RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND REPORTID = @REPORTID AND RTGRSBIN > @RTGRSBIN OR RPTGRIND = @RPTGRIND AND RTPACHIN = @RTPACHIN AND REPORTID > @REPORTID OR RPTGRIND = @RPTGRIND AND RTPACHIN > @RTPACHIN OR RPTGRIND > @RPTGRIND ) ORDER BY RPTGRIND ASC, RTPACHIN ASC, REPORTID ASC, RTGRSBIN ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_LK4000UN_2] TO [DYNGRP]
GO