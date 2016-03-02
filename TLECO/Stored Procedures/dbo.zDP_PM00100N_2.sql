SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00100N_2] (@BS int, @VNDCLDSC char(31), @VNDCLSID char(11), @VNDCLDSC_RS char(31), @VNDCLSID_RS char(11), @VNDCLDSC_RE char(31), @VNDCLSID_RE char(11)) AS  set nocount on IF @VNDCLDSC_RS IS NULL BEGIN SELECT TOP 25  VNDCLSID, VNDCLDSC, DEFLTCLS, MXIAFVND, MXINVAMT, WRITEOFF, CREDTLMT, TEN99TYPE, PTCSHACF, MXWOFAMT, MINORDER, CRLMTDLR, PYMNTPRI, SHIPMTHD, PYMTRMID, MINPYTYP, MINPYDLR, MINPYPCT, CURNCYID, TAXSCHID, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, TRDDISCT, USERDEF1, USERDEF2, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, DISGRPER, DUEGRPER, TaxInvRecvd, CBVAT, DEX_ROW_ID FROM .PM00100 WHERE ( VNDCLDSC = @VNDCLDSC AND VNDCLSID > @VNDCLSID OR VNDCLDSC > @VNDCLDSC ) ORDER BY VNDCLDSC ASC, VNDCLSID ASC END ELSE IF @VNDCLDSC_RS = @VNDCLDSC_RE BEGIN SELECT TOP 25  VNDCLSID, VNDCLDSC, DEFLTCLS, MXIAFVND, MXINVAMT, WRITEOFF, CREDTLMT, TEN99TYPE, PTCSHACF, MXWOFAMT, MINORDER, CRLMTDLR, PYMNTPRI, SHIPMTHD, PYMTRMID, MINPYTYP, MINPYDLR, MINPYPCT, CURNCYID, TAXSCHID, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, TRDDISCT, USERDEF1, USERDEF2, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, DISGRPER, DUEGRPER, TaxInvRecvd, CBVAT, DEX_ROW_ID FROM .PM00100 WHERE VNDCLDSC = @VNDCLDSC_RS AND VNDCLSID BETWEEN @VNDCLSID_RS AND @VNDCLSID_RE AND ( VNDCLDSC = @VNDCLDSC AND VNDCLSID > @VNDCLSID OR VNDCLDSC > @VNDCLDSC ) ORDER BY VNDCLDSC ASC, VNDCLSID ASC END ELSE BEGIN SELECT TOP 25  VNDCLSID, VNDCLDSC, DEFLTCLS, MXIAFVND, MXINVAMT, WRITEOFF, CREDTLMT, TEN99TYPE, PTCSHACF, MXWOFAMT, MINORDER, CRLMTDLR, PYMNTPRI, SHIPMTHD, PYMTRMID, MINPYTYP, MINPYDLR, MINPYPCT, CURNCYID, TAXSCHID, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, TRDDISCT, USERDEF1, USERDEF2, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, DISGRPER, DUEGRPER, TaxInvRecvd, CBVAT, DEX_ROW_ID FROM .PM00100 WHERE VNDCLDSC BETWEEN @VNDCLDSC_RS AND @VNDCLDSC_RE AND VNDCLSID BETWEEN @VNDCLSID_RS AND @VNDCLSID_RE AND ( VNDCLDSC = @VNDCLDSC AND VNDCLSID > @VNDCLSID OR VNDCLDSC > @VNDCLDSC ) ORDER BY VNDCLDSC ASC, VNDCLSID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00100N_2] TO [DYNGRP]
GO
