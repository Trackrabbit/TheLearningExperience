SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_GL70500F_1] (@RPTGRIND_RS smallint, @RTPACHIN_RS smallint, @RTGRSBIN_RS numeric(19,5), @RPTGRIND_RE smallint, @RTPACHIN_RE smallint, @RTGRSBIN_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @RPTGRIND_RS IS NULL BEGIN SELECT TOP 25  IFFILXST, FILEXPNM, EXPTTYPE, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, PRNTTYPE, RPTGRIND, RTPACHIN, RTGRSBIN, REPORTID, FINRPTNM, STGENINT1, ENDGENINT1, STGENINT2, ENDGENINT2, STRTNGDT, ENDINGDT, STTCATEG, STTUDEF1, ENUSRDF1, ENDCATEG, STTCATNM, ENDCATNM, STRTJRNL, ENDJRNAL, STRXSRC, ENTRXSRC, STRTCMTRXNUM, ENDCMTRXNUM, SSRCEDOC, ENDSRCDC, STTACDSC, ENDACDSC, STBDBSID, ENBDBSID, STBDBSDS, ENBDBSDS, STCHBKID, ENCHBKID, STRTDSCR, ENDDESCR, STTSEGID, ENDSEGID, STCTRNUM, ENCNTNUM, STDOCNUM, ENDOCNUM, STMASTID, ENMASTID, STMASTNM, ENMASTNM, SORTBY, CBINACTS, PSTNGACT, UNITACCT, RPRTSHOW, PRRPTFOR, PRVYRCMB, RPTDETAL, INDIVDUL_1, INDIVDUL_2, INDIVDUL_3, INDIVDUL_4, INDIVDUL_5, INDIVDUL_6, INDIVDUL_7, INDIVDUL_8, INDIVDUL_9, INDIVDUL_10, INDIVDUL_11, INDIVDUL_12, INDIVDUL_13, INDIVDUL_14, INDIVDUL_15, INDIVDUL_16, INDIVDUL_17, INDIVDUL_18, INDIVDUL_19, INDIVDUL_20, INDIVDUL_21, INDIVDUL_22, INDIVDUL_23, INDIVDUL_24, INDIVDUL_25, INDIVDUL_26, INDIVDUL_27, INDIVDUL_28, INDIVDUL_29, INDIVDUL_30, INDIVDUL_31, INDIVDUL_32, INDIVDUL_33, INDIVDUL_34, INDIVDUL_35, INDIVDUL_36, INDIVDUL_37, INDIVDUL_38, INDIVDUL_39, INDIVDUL_40, INDIVDUL_41, PRNTDSCR, PRZROBAL, CLCRATIO, INCLGNDS, GLSTTKDT, GLENTKDT, PRUNTACT, STACCNUM_1, STACCNUM_2, STACCNUM_3, STACCNUM_4, EDGACNUM_1, EDGACNUM_2, EDGACNUM_3, EDGACNUM_4, SEGSRTBY, RANGEBY, ACCLSTAT, USEACCEL, CBZBNA, Accounts_Included, Start_Position_String, End_Position_String, RPTXRATE, RPRTCLMD, PRTCURIN, Checkbook_Date, End_Month, Start_Month, YEAR1, INCMCINF, STCURRID, ENDCURID, Include_Voided_Trx, UseLedgersForAcctBalance, DEX_ROW_ID FROM .GL70500 ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE IF @RPTGRIND_RS = @RPTGRIND_RE BEGIN SELECT TOP 25  IFFILXST, FILEXPNM, EXPTTYPE, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, PRNTTYPE, RPTGRIND, RTPACHIN, RTGRSBIN, REPORTID, FINRPTNM, STGENINT1, ENDGENINT1, STGENINT2, ENDGENINT2, STRTNGDT, ENDINGDT, STTCATEG, STTUDEF1, ENUSRDF1, ENDCATEG, STTCATNM, ENDCATNM, STRTJRNL, ENDJRNAL, STRXSRC, ENTRXSRC, STRTCMTRXNUM, ENDCMTRXNUM, SSRCEDOC, ENDSRCDC, STTACDSC, ENDACDSC, STBDBSID, ENBDBSID, STBDBSDS, ENBDBSDS, STCHBKID, ENCHBKID, STRTDSCR, ENDDESCR, STTSEGID, ENDSEGID, STCTRNUM, ENCNTNUM, STDOCNUM, ENDOCNUM, STMASTID, ENMASTID, STMASTNM, ENMASTNM, SORTBY, CBINACTS, PSTNGACT, UNITACCT, RPRTSHOW, PRRPTFOR, PRVYRCMB, RPTDETAL, INDIVDUL_1, INDIVDUL_2, INDIVDUL_3, INDIVDUL_4, INDIVDUL_5, INDIVDUL_6, INDIVDUL_7, INDIVDUL_8, INDIVDUL_9, INDIVDUL_10, INDIVDUL_11, INDIVDUL_12, INDIVDUL_13, INDIVDUL_14, INDIVDUL_15, INDIVDUL_16, INDIVDUL_17, INDIVDUL_18, INDIVDUL_19, INDIVDUL_20, INDIVDUL_21, INDIVDUL_22, INDIVDUL_23, INDIVDUL_24, INDIVDUL_25, INDIVDUL_26, INDIVDUL_27, INDIVDUL_28, INDIVDUL_29, INDIVDUL_30, INDIVDUL_31, INDIVDUL_32, INDIVDUL_33, INDIVDUL_34, INDIVDUL_35, INDIVDUL_36, INDIVDUL_37, INDIVDUL_38, INDIVDUL_39, INDIVDUL_40, INDIVDUL_41, PRNTDSCR, PRZROBAL, CLCRATIO, INCLGNDS, GLSTTKDT, GLENTKDT, PRUNTACT, STACCNUM_1, STACCNUM_2, STACCNUM_3, STACCNUM_4, EDGACNUM_1, EDGACNUM_2, EDGACNUM_3, EDGACNUM_4, SEGSRTBY, RANGEBY, ACCLSTAT, USEACCEL, CBZBNA, Accounts_Included, Start_Position_String, End_Position_String, RPTXRATE, RPRTCLMD, PRTCURIN, Checkbook_Date, End_Month, Start_Month, YEAR1, INCMCINF, STCURRID, ENDCURID, Include_Voided_Trx, UseLedgersForAcctBalance, DEX_ROW_ID FROM .GL70500 WHERE RPTGRIND = @RPTGRIND_RS AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END ELSE BEGIN SELECT TOP 25  IFFILXST, FILEXPNM, EXPTTYPE, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, PRNTTYPE, RPTGRIND, RTPACHIN, RTGRSBIN, REPORTID, FINRPTNM, STGENINT1, ENDGENINT1, STGENINT2, ENDGENINT2, STRTNGDT, ENDINGDT, STTCATEG, STTUDEF1, ENUSRDF1, ENDCATEG, STTCATNM, ENDCATNM, STRTJRNL, ENDJRNAL, STRXSRC, ENTRXSRC, STRTCMTRXNUM, ENDCMTRXNUM, SSRCEDOC, ENDSRCDC, STTACDSC, ENDACDSC, STBDBSID, ENBDBSID, STBDBSDS, ENBDBSDS, STCHBKID, ENCHBKID, STRTDSCR, ENDDESCR, STTSEGID, ENDSEGID, STCTRNUM, ENCNTNUM, STDOCNUM, ENDOCNUM, STMASTID, ENMASTID, STMASTNM, ENMASTNM, SORTBY, CBINACTS, PSTNGACT, UNITACCT, RPRTSHOW, PRRPTFOR, PRVYRCMB, RPTDETAL, INDIVDUL_1, INDIVDUL_2, INDIVDUL_3, INDIVDUL_4, INDIVDUL_5, INDIVDUL_6, INDIVDUL_7, INDIVDUL_8, INDIVDUL_9, INDIVDUL_10, INDIVDUL_11, INDIVDUL_12, INDIVDUL_13, INDIVDUL_14, INDIVDUL_15, INDIVDUL_16, INDIVDUL_17, INDIVDUL_18, INDIVDUL_19, INDIVDUL_20, INDIVDUL_21, INDIVDUL_22, INDIVDUL_23, INDIVDUL_24, INDIVDUL_25, INDIVDUL_26, INDIVDUL_27, INDIVDUL_28, INDIVDUL_29, INDIVDUL_30, INDIVDUL_31, INDIVDUL_32, INDIVDUL_33, INDIVDUL_34, INDIVDUL_35, INDIVDUL_36, INDIVDUL_37, INDIVDUL_38, INDIVDUL_39, INDIVDUL_40, INDIVDUL_41, PRNTDSCR, PRZROBAL, CLCRATIO, INCLGNDS, GLSTTKDT, GLENTKDT, PRUNTACT, STACCNUM_1, STACCNUM_2, STACCNUM_3, STACCNUM_4, EDGACNUM_1, EDGACNUM_2, EDGACNUM_3, EDGACNUM_4, SEGSRTBY, RANGEBY, ACCLSTAT, USEACCEL, CBZBNA, Accounts_Included, Start_Position_String, End_Position_String, RPTXRATE, RPRTCLMD, PRTCURIN, Checkbook_Date, End_Month, Start_Month, YEAR1, INCMCINF, STCURRID, ENDCURID, Include_Voided_Trx, UseLedgersForAcctBalance, DEX_ROW_ID FROM .GL70500 WHERE RPTGRIND BETWEEN @RPTGRIND_RS AND @RPTGRIND_RE AND RTPACHIN BETWEEN @RTPACHIN_RS AND @RTPACHIN_RE AND RTGRSBIN BETWEEN @RTGRSBIN_RS AND @RTGRSBIN_RE ORDER BY RPTGRIND ASC, RTPACHIN ASC, RTGRSBIN ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_GL70500F_1] TO [DYNGRP]
GO
