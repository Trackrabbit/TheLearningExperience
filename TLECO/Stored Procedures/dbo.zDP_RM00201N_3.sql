SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00201N_3] (@BS int, @DEFLTCLS tinyint, @CLASSID char(15), @DEFLTCLS_RS tinyint, @CLASSID_RS char(15), @DEFLTCLS_RE tinyint, @CLASSID_RE char(15)) AS  set nocount on IF @DEFLTCLS_RS IS NULL BEGIN SELECT TOP 25  CLASSID, CLASDSCR, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, DEFLTCLS, BALNCTYP, CHEKBKID, BANKNAME, TAXSCHID, SHIPMTHD, PYMTRMID, CUSTDISC, CSTPRLVL, MINPYTYP, MINPYDLR, MINPYPCT, MXWOFTYP, MXWROFAM, FINCHARG, FNCHATYP, FINCHDLR, FNCHPCNT, PRCLEVEL, CURNCYID, RATETPID, DEFCACTY, RMCSHACC, RMARACC, RMCOSACC, RMIVACC, RMSLSACC, RMAVACC, RMTAKACC, RMFCGACC, RMWRACC, RMSORACC, SALSTERR, SLPRSNID, STMTCYCL, SNDSTMNT, INACTIVE, KPCALHST, KPDSTHST, KPERHIST, KPTRXHST, NOTEINDX, MODIFDT, CREATDDT, Revalue_Customer, Post_Results_To, DISGRPER, DUEGRPER, ORDERFULFILLDEFAULT, CUSTPRIORITY, RMOvrpymtWrtoffAcctIdx, CBVAT, INCLUDEINDP, DEX_ROW_ID FROM .RM00201 WHERE ( DEFLTCLS = @DEFLTCLS AND CLASSID > @CLASSID OR DEFLTCLS > @DEFLTCLS ) ORDER BY DEFLTCLS ASC, CLASSID ASC END ELSE IF @DEFLTCLS_RS = @DEFLTCLS_RE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, DEFLTCLS, BALNCTYP, CHEKBKID, BANKNAME, TAXSCHID, SHIPMTHD, PYMTRMID, CUSTDISC, CSTPRLVL, MINPYTYP, MINPYDLR, MINPYPCT, MXWOFTYP, MXWROFAM, FINCHARG, FNCHATYP, FINCHDLR, FNCHPCNT, PRCLEVEL, CURNCYID, RATETPID, DEFCACTY, RMCSHACC, RMARACC, RMCOSACC, RMIVACC, RMSLSACC, RMAVACC, RMTAKACC, RMFCGACC, RMWRACC, RMSORACC, SALSTERR, SLPRSNID, STMTCYCL, SNDSTMNT, INACTIVE, KPCALHST, KPDSTHST, KPERHIST, KPTRXHST, NOTEINDX, MODIFDT, CREATDDT, Revalue_Customer, Post_Results_To, DISGRPER, DUEGRPER, ORDERFULFILLDEFAULT, CUSTPRIORITY, RMOvrpymtWrtoffAcctIdx, CBVAT, INCLUDEINDP, DEX_ROW_ID FROM .RM00201 WHERE DEFLTCLS = @DEFLTCLS_RS AND CLASSID BETWEEN @CLASSID_RS AND @CLASSID_RE AND ( DEFLTCLS = @DEFLTCLS AND CLASSID > @CLASSID OR DEFLTCLS > @DEFLTCLS ) ORDER BY DEFLTCLS ASC, CLASSID ASC END ELSE BEGIN SELECT TOP 25  CLASSID, CLASDSCR, CRLMTTYP, CRLMTAMT, CRLMTPER, CRLMTPAM, DEFLTCLS, BALNCTYP, CHEKBKID, BANKNAME, TAXSCHID, SHIPMTHD, PYMTRMID, CUSTDISC, CSTPRLVL, MINPYTYP, MINPYDLR, MINPYPCT, MXWOFTYP, MXWROFAM, FINCHARG, FNCHATYP, FINCHDLR, FNCHPCNT, PRCLEVEL, CURNCYID, RATETPID, DEFCACTY, RMCSHACC, RMARACC, RMCOSACC, RMIVACC, RMSLSACC, RMAVACC, RMTAKACC, RMFCGACC, RMWRACC, RMSORACC, SALSTERR, SLPRSNID, STMTCYCL, SNDSTMNT, INACTIVE, KPCALHST, KPDSTHST, KPERHIST, KPTRXHST, NOTEINDX, MODIFDT, CREATDDT, Revalue_Customer, Post_Results_To, DISGRPER, DUEGRPER, ORDERFULFILLDEFAULT, CUSTPRIORITY, RMOvrpymtWrtoffAcctIdx, CBVAT, INCLUDEINDP, DEX_ROW_ID FROM .RM00201 WHERE DEFLTCLS BETWEEN @DEFLTCLS_RS AND @DEFLTCLS_RE AND CLASSID BETWEEN @CLASSID_RS AND @CLASSID_RE AND ( DEFLTCLS = @DEFLTCLS AND CLASSID > @CLASSID OR DEFLTCLS > @DEFLTCLS ) ORDER BY DEFLTCLS ASC, CLASSID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00201N_3] TO [DYNGRP]
GO