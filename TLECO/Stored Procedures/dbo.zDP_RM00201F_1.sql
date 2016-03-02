SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00201F_1] (@CLASSID_RS char(15), @CLASSID_RE char(15)) AS  set nocount on IF @CLASSID_RS IS NULL BEGIN SELECT TOP 25  CLASSID, CLASDSCR, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, DEFLTCLS, BALNCTYP, CHEKBKID, BANKNAME, TAXSCHID, SHIPMTHD, PYMTRMID, CUSTDISC, CSTPRLVL, MINPYTYP, MINPYDLR, MINPYPCT, MXWOFTYP, MXWROFAM, FINCHARG, FNCHATYP, FINCHDLR, FNCHPCNT, PRCLEVEL, CURNCYID, RATETPID, DEFCACTY, RMCSHACC, RMARACC, RMCOSACC, RMIVACC, RMSLSACC, RMAVACC, RMTAKACC, RMFCGACC, RMWRACC, RMSORACC, SALSTERR, SLPRSNID, STMTCYCL, SNDSTMNT, INACTIVE, KPCALHST, KPDSTHST, KPERHIST, KPTRXHST, NOTEINDX, MODIFDT, CREATDDT, Revalue_Customer, Post_Results_To, DISGRPER, DUEGRPER, ORDERFULFILLDEFAULT, CUSTPRIORITY, RMOvrpymtWrtoffAcctIdx, CBVAT, INCLUDEINDP, DEX_ROW_ID FROM .RM00201 ORDER BY CLASSID ASC END ELSE IF @CLASSID_RS = @CLASSID_RE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, DEFLTCLS, BALNCTYP, CHEKBKID, BANKNAME, TAXSCHID, SHIPMTHD, PYMTRMID, CUSTDISC, CSTPRLVL, MINPYTYP, MINPYDLR, MINPYPCT, MXWOFTYP, MXWROFAM, FINCHARG, FNCHATYP, FINCHDLR, FNCHPCNT, PRCLEVEL, CURNCYID, RATETPID, DEFCACTY, RMCSHACC, RMARACC, RMCOSACC, RMIVACC, RMSLSACC, RMAVACC, RMTAKACC, RMFCGACC, RMWRACC, RMSORACC, SALSTERR, SLPRSNID, STMTCYCL, SNDSTMNT, INACTIVE, KPCALHST, KPDSTHST, KPERHIST, KPTRXHST, NOTEINDX, MODIFDT, CREATDDT, Revalue_Customer, Post_Results_To, DISGRPER, DUEGRPER, ORDERFULFILLDEFAULT, CUSTPRIORITY, RMOvrpymtWrtoffAcctIdx, CBVAT, INCLUDEINDP, DEX_ROW_ID FROM .RM00201 WHERE CLASSID = @CLASSID_RS ORDER BY CLASSID ASC END ELSE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, DEFLTCLS, BALNCTYP, CHEKBKID, BANKNAME, TAXSCHID, SHIPMTHD, PYMTRMID, CUSTDISC, CSTPRLVL, MINPYTYP, MINPYDLR, MINPYPCT, MXWOFTYP, MXWROFAM, FINCHARG, FNCHATYP, FINCHDLR, FNCHPCNT, PRCLEVEL, CURNCYID, RATETPID, DEFCACTY, RMCSHACC, RMARACC, RMCOSACC, RMIVACC, RMSLSACC, RMAVACC, RMTAKACC, RMFCGACC, RMWRACC, RMSORACC, SALSTERR, SLPRSNID, STMTCYCL, SNDSTMNT, INACTIVE, KPCALHST, KPDSTHST, KPERHIST, KPTRXHST, NOTEINDX, MODIFDT, CREATDDT, Revalue_Customer, Post_Results_To, DISGRPER, DUEGRPER, ORDERFULFILLDEFAULT, CUSTPRIORITY, RMOvrpymtWrtoffAcctIdx, CBVAT, INCLUDEINDP, DEX_ROW_ID FROM .RM00201 WHERE CLASSID BETWEEN @CLASSID_RS AND @CLASSID_RE ORDER BY CLASSID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00201F_1] TO [DYNGRP]
GO
