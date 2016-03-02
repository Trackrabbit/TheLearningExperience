SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_PM00200N_6] (@BS int, @TXRGNNUM char(25), @VENDORID char(15), @TXRGNNUM_RS char(25), @VENDORID_RS char(15), @TXRGNNUM_RE char(25), @VENDORID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @TXRGNNUM_RS IS NULL BEGIN SELECT TOP 25  VENDORID, VENDNAME, VNDCHKNM, VENDSHNM, VADDCDPR, VADCDPAD, VADCDSFR, VADCDTRO, VNDCLSID, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, UPSZONE, SHIPMTHD, TAXSCHID, ACNMVNDR, TXIDNMBR, VENDSTTS, CURNCYID, TXRGNNUM, PARVENID, TRDDISCT, TEN99TYPE, TEN99BOXNUMBER, MINORDER, PYMTRMID, MINPYTYP, MINPYPCT, MINPYDLR, MXIAFVND, MAXINDLR, COMMENT1, COMMENT2, USERDEF1, USERDEF2, CRLMTDLR, PYMNTPRI, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, HOLD, PTCSHACF, CREDTLMT, WRITEOFF, MXWOFAMT, SBPPSDED, PPSTAXRT, DXVARNUM, CRTCOMDT, CRTEXPDT, RTOBUTKN, XPDTOBLG, PRSPAYEE, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, NOTEINDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, TaxInvRecvd, USERLANG, WithholdingType, WithholdingFormType, WithholdingEntityType, TaxFileNumMode, BRTHDATE, LaborPmtType, CCode, DECLID, CBVAT, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, VADCD1099, DEX_ROW_TS, DEX_ROW_ID FROM .PM00200 WHERE ( TXRGNNUM = @TXRGNNUM AND VENDORID > @VENDORID OR TXRGNNUM > @TXRGNNUM ) ORDER BY TXRGNNUM ASC, VENDORID ASC END ELSE IF @TXRGNNUM_RS = @TXRGNNUM_RE BEGIN SELECT TOP 25  VENDORID, VENDNAME, VNDCHKNM, VENDSHNM, VADDCDPR, VADCDPAD, VADCDSFR, VADCDTRO, VNDCLSID, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, UPSZONE, SHIPMTHD, TAXSCHID, ACNMVNDR, TXIDNMBR, VENDSTTS, CURNCYID, TXRGNNUM, PARVENID, TRDDISCT, TEN99TYPE, TEN99BOXNUMBER, MINORDER, PYMTRMID, MINPYTYP, MINPYPCT, MINPYDLR, MXIAFVND, MAXINDLR, COMMENT1, COMMENT2, USERDEF1, USERDEF2, CRLMTDLR, PYMNTPRI, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, HOLD, PTCSHACF, CREDTLMT, WRITEOFF, MXWOFAMT, SBPPSDED, PPSTAXRT, DXVARNUM, CRTCOMDT, CRTEXPDT, RTOBUTKN, XPDTOBLG, PRSPAYEE, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, NOTEINDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, TaxInvRecvd, USERLANG, WithholdingType, WithholdingFormType, WithholdingEntityType, TaxFileNumMode, BRTHDATE, LaborPmtType, CCode, DECLID, CBVAT, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, VADCD1099, DEX_ROW_TS, DEX_ROW_ID FROM .PM00200 WHERE TXRGNNUM = @TXRGNNUM_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( TXRGNNUM = @TXRGNNUM AND VENDORID > @VENDORID OR TXRGNNUM > @TXRGNNUM ) ORDER BY TXRGNNUM ASC, VENDORID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, VENDNAME, VNDCHKNM, VENDSHNM, VADDCDPR, VADCDPAD, VADCDSFR, VADCDTRO, VNDCLSID, VNDCNTCT, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, PHNUMBR1, PHNUMBR2, PHONE3, FAXNUMBR, UPSZONE, SHIPMTHD, TAXSCHID, ACNMVNDR, TXIDNMBR, VENDSTTS, CURNCYID, TXRGNNUM, PARVENID, TRDDISCT, TEN99TYPE, TEN99BOXNUMBER, MINORDER, PYMTRMID, MINPYTYP, MINPYPCT, MINPYDLR, MXIAFVND, MAXINDLR, COMMENT1, COMMENT2, USERDEF1, USERDEF2, CRLMTDLR, PYMNTPRI, KPCALHST, KGLDSTHS, KPERHIST, KPTRXHST, HOLD, PTCSHACF, CREDTLMT, WRITEOFF, MXWOFAMT, SBPPSDED, PPSTAXRT, DXVARNUM, CRTCOMDT, CRTEXPDT, RTOBUTKN, XPDTOBLG, PRSPAYEE, PMAPINDX, PMCSHIDX, PMDAVIDX, PMDTKIDX, PMFINIDX, PMMSCHIX, PMFRTIDX, PMTAXIDX, PMWRTIDX, PMPRCHIX, PMRTNGIX, PMTDSCIX, ACPURIDX, PURPVIDX, NOTEINDX, CHEKBKID, MODIFDT, CREATDDT, RATETPID, Revalue_Vendor, Post_Results_To, FREEONBOARD, GOVCRPID, GOVINDID, DISGRPER, DUEGRPER, DOCFMTID, TaxInvRecvd, USERLANG, WithholdingType, WithholdingFormType, WithholdingEntityType, TaxFileNumMode, BRTHDATE, LaborPmtType, CCode, DECLID, CBVAT, Workflow_Approval_Status, Workflow_Priority, Workflow_Status, VADCD1099, DEX_ROW_TS, DEX_ROW_ID FROM .PM00200 WHERE TXRGNNUM BETWEEN @TXRGNNUM_RS AND @TXRGNNUM_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( TXRGNNUM = @TXRGNNUM AND VENDORID > @VENDORID OR TXRGNNUM > @TXRGNNUM ) ORDER BY TXRGNNUM ASC, VENDORID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00200N_6] TO [DYNGRP]
GO