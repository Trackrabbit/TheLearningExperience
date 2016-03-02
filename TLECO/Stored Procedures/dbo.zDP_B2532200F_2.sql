SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2532200F_2] (@USERID_RS char(15), @VENDNAME_RS char(65), @VENDORID_RS char(15), @USERID_RE char(15), @VENDNAME_RE char(65), @VENDORID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, VENDNAME, VNDCHKNM, VENDSHNM, VADDCDPR, VADCDPAD, VADCDSFR, VADCDTRO, VNDCLSID, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, UPSZONE, SHIPMTHD, TAXSCHID, ACNMVNDR, TXIDNMBR, VENDSTTS, CURNCYID, TXRGNNUM, PARVENID, TRDDISCT, TEN99TYPE, MINORDER, PYMTRMID, MINPYTYP, MINPYPCT, MINPYDLR, MXIAFVND, MAXINDLR, COMMENT1, COMMENT2, USERDEF1, USERDEF2, CRLMTDLR, PYMNTPRI, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, HOLD, PTCSHACF, CREDTLMT, WRITEOFF, MXWOFAMT, SBPPSDED, PPSTAXRT, DXVARNUM, CRTCOMDT, CRTEXPDT, RTOBUTKN, XPDTOBLG, PRSPAYEE, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, NOTEINDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, TaxInvRecvd, USERLANG, WithholdingType, WithholdingFormType, WithholdingEntityType, TaxFileNumMode, BRTHDATE, LaborPmtType, USERID, DEX_ROW_ID FROM .B2532200 ORDER BY USERID ASC, VENDNAME ASC, VENDORID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  VENDORID, VENDNAME, VNDCHKNM, VENDSHNM, VADDCDPR, VADCDPAD, VADCDSFR, VADCDTRO, VNDCLSID, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, UPSZONE, SHIPMTHD, TAXSCHID, ACNMVNDR, TXIDNMBR, VENDSTTS, CURNCYID, TXRGNNUM, PARVENID, TRDDISCT, TEN99TYPE, MINORDER, PYMTRMID, MINPYTYP, MINPYPCT, MINPYDLR, MXIAFVND, MAXINDLR, COMMENT1, COMMENT2, USERDEF1, USERDEF2, CRLMTDLR, PYMNTPRI, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, HOLD, PTCSHACF, CREDTLMT, WRITEOFF, MXWOFAMT, SBPPSDED, PPSTAXRT, DXVARNUM, CRTCOMDT, CRTEXPDT, RTOBUTKN, XPDTOBLG, PRSPAYEE, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, NOTEINDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, TaxInvRecvd, USERLANG, WithholdingType, WithholdingFormType, WithholdingEntityType, TaxFileNumMode, BRTHDATE, LaborPmtType, USERID, DEX_ROW_ID FROM .B2532200 WHERE USERID = @USERID_RS AND VENDNAME BETWEEN @VENDNAME_RS AND @VENDNAME_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY USERID ASC, VENDNAME ASC, VENDORID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, VENDNAME, VNDCHKNM, VENDSHNM, VADDCDPR, VADCDPAD, VADCDSFR, VADCDTRO, VNDCLSID, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, UPSZONE, SHIPMTHD, TAXSCHID, ACNMVNDR, TXIDNMBR, VENDSTTS, CURNCYID, TXRGNNUM, PARVENID, TRDDISCT, TEN99TYPE, MINORDER, PYMTRMID, MINPYTYP, MINPYPCT, MINPYDLR, MXIAFVND, MAXINDLR, COMMENT1, COMMENT2, USERDEF1, USERDEF2, CRLMTDLR, PYMNTPRI, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, HOLD, PTCSHACF, CREDTLMT, WRITEOFF, MXWOFAMT, SBPPSDED, PPSTAXRT, DXVARNUM, CRTCOMDT, CRTEXPDT, RTOBUTKN, XPDTOBLG, PRSPAYEE, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, NOTEINDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, TaxInvRecvd, USERLANG, WithholdingType, WithholdingFormType, WithholdingEntityType, TaxFileNumMode, BRTHDATE, LaborPmtType, USERID, DEX_ROW_ID FROM .B2532200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND VENDNAME BETWEEN @VENDNAME_RS AND @VENDNAME_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY USERID ASC, VENDNAME ASC, VENDORID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2532200F_2] TO [DYNGRP]
GO
