SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00101L_8] (@TXRGNNUM_RS char(25), @CUSTNMBR_RS char(15), @TXRGNNUM_RE char(25), @CUSTNMBR_RE char(15)) AS  set nocount on IF @TXRGNNUM_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, CUSTNAME, CUSTCLAS, CPRCSTNM, CNTCPRSN, STMTNAME, SHRTNAME, ADRSCODE, UPSZONE, SHIPMTHD, TAXSCHID, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, PRBTADCD, PRSTADCD, STADDRCD, SLPRSNID, CHEKBKID, PYMTRMID, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, CURNCYID, RATETPID, CUSTDISC, PRCLEVEL, MINPYTYP, MINPYDLR, MINPYPCT, FNCHATYP, FNCHPCNT, FINCHDLR, MXWOFTYP, MXWROFAM, COMMENT1, COMMENT2, USERDEF1, USERDEF2, TAXEXMT1, TAXEXMT2, TXRGNNUM, BALNCTYP, STMTCYCL, BANKNAME, BNKBRNCH, SALSTERR, DEFCACTY, RMCSHACC, RMARACC, RMSLSACC, RMIVACC, RMCOSACC, RMTAKACC, RMAVACC, RMFCGACC, RMWRACC, RMSORACC, FRSTINDT, INACTIVE, HOLD, CRCARDID, CRCRDNUM, CCRDXPDT, KPDSTHST, KPCALHST, KPERHIST, KPTRXHST, NOTEINDX, CREATDDT, MODIFDT, Revalue_Customer, Post_Results_To, FINCHID, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, Send_Email_Statements, USERLANG, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, ORDERFULFILLDEFAULT, CUSTPRIORITY, CCode, DECLID, RMOvrpymtWrtoffAcctIdx, SHIPCOMPLETE, CBVAT, INCLUDEINDP, DEX_ROW_TS, DEX_ROW_ID FROM .RM00101 ORDER BY TXRGNNUM DESC, CUSTNMBR DESC END ELSE IF @TXRGNNUM_RS = @TXRGNNUM_RE BEGIN SELECT TOP 25  CUSTNMBR, CUSTNAME, CUSTCLAS, CPRCSTNM, CNTCPRSN, STMTNAME, SHRTNAME, ADRSCODE, UPSZONE, SHIPMTHD, TAXSCHID, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, PRBTADCD, PRSTADCD, STADDRCD, SLPRSNID, CHEKBKID, PYMTRMID, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, CURNCYID, RATETPID, CUSTDISC, PRCLEVEL, MINPYTYP, MINPYDLR, MINPYPCT, FNCHATYP, FNCHPCNT, FINCHDLR, MXWOFTYP, MXWROFAM, COMMENT1, COMMENT2, USERDEF1, USERDEF2, TAXEXMT1, TAXEXMT2, TXRGNNUM, BALNCTYP, STMTCYCL, BANKNAME, BNKBRNCH, SALSTERR, DEFCACTY, RMCSHACC, RMARACC, RMSLSACC, RMIVACC, RMCOSACC, RMTAKACC, RMAVACC, RMFCGACC, RMWRACC, RMSORACC, FRSTINDT, INACTIVE, HOLD, CRCARDID, CRCRDNUM, CCRDXPDT, KPDSTHST, KPCALHST, KPERHIST, KPTRXHST, NOTEINDX, CREATDDT, MODIFDT, Revalue_Customer, Post_Results_To, FINCHID, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, Send_Email_Statements, USERLANG, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, ORDERFULFILLDEFAULT, CUSTPRIORITY, CCode, DECLID, RMOvrpymtWrtoffAcctIdx, SHIPCOMPLETE, CBVAT, INCLUDEINDP, DEX_ROW_TS, DEX_ROW_ID FROM .RM00101 WHERE TXRGNNUM = @TXRGNNUM_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY TXRGNNUM DESC, CUSTNMBR DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, CUSTNAME, CUSTCLAS, CPRCSTNM, CNTCPRSN, STMTNAME, SHRTNAME, ADRSCODE, UPSZONE, SHIPMTHD, TAXSCHID, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, PRBTADCD, PRSTADCD, STADDRCD, SLPRSNID, CHEKBKID, PYMTRMID, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, CURNCYID, RATETPID, CUSTDISC, PRCLEVEL, MINPYTYP, MINPYDLR, MINPYPCT, FNCHATYP, FNCHPCNT, FINCHDLR, MXWOFTYP, MXWROFAM, COMMENT1, COMMENT2, USERDEF1, USERDEF2, TAXEXMT1, TAXEXMT2, TXRGNNUM, BALNCTYP, STMTCYCL, BANKNAME, BNKBRNCH, SALSTERR, DEFCACTY, RMCSHACC, RMARACC, RMSLSACC, RMIVACC, RMCOSACC, RMTAKACC, RMAVACC, RMFCGACC, RMWRACC, RMSORACC, FRSTINDT, INACTIVE, HOLD, CRCARDID, CRCRDNUM, CCRDXPDT, KPDSTHST, KPCALHST, KPERHIST, KPTRXHST, NOTEINDX, CREATDDT, MODIFDT, Revalue_Customer, Post_Results_To, FINCHID, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, Send_Email_Statements, USERLANG, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, ORDERFULFILLDEFAULT, CUSTPRIORITY, CCode, DECLID, RMOvrpymtWrtoffAcctIdx, SHIPCOMPLETE, CBVAT, INCLUDEINDP, DEX_ROW_TS, DEX_ROW_ID FROM .RM00101 WHERE TXRGNNUM BETWEEN @TXRGNNUM_RS AND @TXRGNNUM_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY TXRGNNUM DESC, CUSTNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00101L_8] TO [DYNGRP]
GO