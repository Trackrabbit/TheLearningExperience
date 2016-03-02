SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00101SS_6] (@SALSTERR char(15), @CUSTNMBR char(15)) AS  set nocount on SELECT TOP 1  CUSTNMBR, CUSTNAME, CUSTCLAS, CPRCSTNM, CNTCPRSN, STMTNAME, SHRTNAME, ADRSCODE, UPSZONE, SHIPMTHD, TAXSCHID, ADDRESS1, ADDRESS2, ADDRESS3, COUNTRY, CITY, STATE, ZIP, PHONE1, PHONE2, PHONE3, FAX, PRBTADCD, PRSTADCD, STADDRCD, SLPRSNID, CHEKBKID, PYMTRMID, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, CURNCYID, RATETPID, CUSTDISC, PRCLEVEL, MINPYTYP, MINPYDLR, MINPYPCT, FNCHATYP, FNCHPCNT, FINCHDLR, MXWOFTYP, MXWROFAM, COMMENT1, COMMENT2, USERDEF1, USERDEF2, TAXEXMT1, TAXEXMT2, TXRGNNUM, BALNCTYP, STMTCYCL, BANKNAME, BNKBRNCH, SALSTERR, DEFCACTY, RMCSHACC, RMARACC, RMSLSACC, RMIVACC, RMCOSACC, RMTAKACC, RMAVACC, RMFCGACC, RMWRACC, RMSORACC, FRSTINDT, INACTIVE, HOLD, CRCARDID, CRCRDNUM, CCRDXPDT, KPDSTHST, KPCALHST, KPERHIST, KPTRXHST, NOTEINDX, CREATDDT, MODIFDT, Revalue_Customer, Post_Results_To, FINCHID, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, Send_Email_Statements, USERLANG, GPSFOINTEGRATIONID, INTEGRATIONSOURCE, INTEGRATIONID, ORDERFULFILLDEFAULT, CUSTPRIORITY, CCode, DECLID, RMOvrpymtWrtoffAcctIdx, SHIPCOMPLETE, CBVAT, INCLUDEINDP, DEX_ROW_TS, DEX_ROW_ID FROM .RM00101 WHERE SALSTERR = @SALSTERR AND CUSTNMBR = @CUSTNMBR ORDER BY SALSTERR ASC, CUSTNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00101SS_6] TO [DYNGRP]
GO