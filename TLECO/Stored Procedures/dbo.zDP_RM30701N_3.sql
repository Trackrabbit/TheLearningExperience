SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM30701N_3] (@BS int, @STMTNAME char(65), @DATE1 datetime, @CUSTNMBR char(15), @CURNCYID char(15), @RNNMBR int, @STMTNAME_RS char(65), @DATE1_RS datetime, @CUSTNMBR_RS char(15), @CURNCYID_RS char(15), @RNNMBR_RS int, @STMTNAME_RE char(65), @DATE1_RE datetime, @CUSTNMBR_RE char(15), @CURNCYID_RE char(15), @RNNMBR_RE int) AS  set nocount on IF @STMTNAME_RS IS NULL BEGIN SELECT TOP 25  RNNMBR, DSCRIPTN, STMNTID, CUSTNMBR, STMTNAME, CURNCYID, CURRNIDX, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, PHONE1, PHONE2, PHONE3, CITY, STATE, ZIP, DATE1, MINPYDUE, CUSTMSGS_1, CUSTMSGS_2, CUSTMSGS_3, AMNTDUE, STMTMSGS_1, STMTMSGS_2, STMTMSGS_3, STMTMSGS_4, STMTMSGS_5, STMTMSGS_6, STMTMSGS_7, STMTMSGS_8, STMTMSGS_9, STMTMSGS_10, STMTMSGS_11, STMTMSGS_12, STMTMSGS_13, STMTMSGS_14, STMTMSGS_15, DOCARABR_1, DOCARABR_2, DOCARABR_3, DOCARABR_4, DOCARABR_5, DOCARABR_6, DOCARABR_7, DOCARABR_8, DOCARABR_9, DOCARDSC_1, DOCARDSC_2, DOCARDSC_3, DOCARDSC_4, DOCARDSC_5, DOCARDSC_6, DOCARDSC_7, DOCARDSC_8, DOCARDSC_9, AGPERAMT_1, AGPERAMT_2, AGPERAMT_3, AGPERAMT_4, AGPERAMT_5, AGPERAMT_6, AGPERAMT_7, AGPERDSC_1, AGPERDSC_2, AGPERDSC_3, AGPERDSC_4, AGPERDSC_5, AGPERDSC_6, AGPERDSC_7, CMPANYID, LOCATNID, PYMTRMID, CUSTBLNC, DEPRECV, DEX_ROW_ID FROM .RM30701 WHERE ( STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR = @CUSTNMBR AND CURNCYID = @CURNCYID AND RNNMBR > @RNNMBR OR STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR = @CUSTNMBR AND CURNCYID > @CURNCYID OR STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR > @CUSTNMBR OR STMTNAME = @STMTNAME AND DATE1 > @DATE1 OR STMTNAME > @STMTNAME ) ORDER BY STMTNAME ASC, DATE1 ASC, CUSTNMBR ASC, CURNCYID ASC, RNNMBR ASC END ELSE IF @STMTNAME_RS = @STMTNAME_RE BEGIN SELECT TOP 25  RNNMBR, DSCRIPTN, STMNTID, CUSTNMBR, STMTNAME, CURNCYID, CURRNIDX, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, PHONE1, PHONE2, PHONE3, CITY, STATE, ZIP, DATE1, MINPYDUE, CUSTMSGS_1, CUSTMSGS_2, CUSTMSGS_3, AMNTDUE, STMTMSGS_1, STMTMSGS_2, STMTMSGS_3, STMTMSGS_4, STMTMSGS_5, STMTMSGS_6, STMTMSGS_7, STMTMSGS_8, STMTMSGS_9, STMTMSGS_10, STMTMSGS_11, STMTMSGS_12, STMTMSGS_13, STMTMSGS_14, STMTMSGS_15, DOCARABR_1, DOCARABR_2, DOCARABR_3, DOCARABR_4, DOCARABR_5, DOCARABR_6, DOCARABR_7, DOCARABR_8, DOCARABR_9, DOCARDSC_1, DOCARDSC_2, DOCARDSC_3, DOCARDSC_4, DOCARDSC_5, DOCARDSC_6, DOCARDSC_7, DOCARDSC_8, DOCARDSC_9, AGPERAMT_1, AGPERAMT_2, AGPERAMT_3, AGPERAMT_4, AGPERAMT_5, AGPERAMT_6, AGPERAMT_7, AGPERDSC_1, AGPERDSC_2, AGPERDSC_3, AGPERDSC_4, AGPERDSC_5, AGPERDSC_6, AGPERDSC_7, CMPANYID, LOCATNID, PYMTRMID, CUSTBLNC, DEPRECV, DEX_ROW_ID FROM .RM30701 WHERE STMTNAME = @STMTNAME_RS AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RNNMBR BETWEEN @RNNMBR_RS AND @RNNMBR_RE AND ( STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR = @CUSTNMBR AND CURNCYID = @CURNCYID AND RNNMBR > @RNNMBR OR STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR = @CUSTNMBR AND CURNCYID > @CURNCYID OR STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR > @CUSTNMBR OR STMTNAME = @STMTNAME AND DATE1 > @DATE1 OR STMTNAME > @STMTNAME ) ORDER BY STMTNAME ASC, DATE1 ASC, CUSTNMBR ASC, CURNCYID ASC, RNNMBR ASC END ELSE BEGIN SELECT TOP 25  RNNMBR, DSCRIPTN, STMNTID, CUSTNMBR, STMTNAME, CURNCYID, CURRNIDX, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, PHONE1, PHONE2, PHONE3, CITY, STATE, ZIP, DATE1, MINPYDUE, CUSTMSGS_1, CUSTMSGS_2, CUSTMSGS_3, AMNTDUE, STMTMSGS_1, STMTMSGS_2, STMTMSGS_3, STMTMSGS_4, STMTMSGS_5, STMTMSGS_6, STMTMSGS_7, STMTMSGS_8, STMTMSGS_9, STMTMSGS_10, STMTMSGS_11, STMTMSGS_12, STMTMSGS_13, STMTMSGS_14, STMTMSGS_15, DOCARABR_1, DOCARABR_2, DOCARABR_3, DOCARABR_4, DOCARABR_5, DOCARABR_6, DOCARABR_7, DOCARABR_8, DOCARABR_9, DOCARDSC_1, DOCARDSC_2, DOCARDSC_3, DOCARDSC_4, DOCARDSC_5, DOCARDSC_6, DOCARDSC_7, DOCARDSC_8, DOCARDSC_9, AGPERAMT_1, AGPERAMT_2, AGPERAMT_3, AGPERAMT_4, AGPERAMT_5, AGPERAMT_6, AGPERAMT_7, AGPERDSC_1, AGPERDSC_2, AGPERDSC_3, AGPERDSC_4, AGPERDSC_5, AGPERDSC_6, AGPERDSC_7, CMPANYID, LOCATNID, PYMTRMID, CUSTBLNC, DEPRECV, DEX_ROW_ID FROM .RM30701 WHERE STMTNAME BETWEEN @STMTNAME_RS AND @STMTNAME_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE AND RNNMBR BETWEEN @RNNMBR_RS AND @RNNMBR_RE AND ( STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR = @CUSTNMBR AND CURNCYID = @CURNCYID AND RNNMBR > @RNNMBR OR STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR = @CUSTNMBR AND CURNCYID > @CURNCYID OR STMTNAME = @STMTNAME AND DATE1 = @DATE1 AND CUSTNMBR > @CUSTNMBR OR STMTNAME = @STMTNAME AND DATE1 > @DATE1 OR STMTNAME > @STMTNAME ) ORDER BY STMTNAME ASC, DATE1 ASC, CUSTNMBR ASC, CURNCYID ASC, RNNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM30701N_3] TO [DYNGRP]
GO
