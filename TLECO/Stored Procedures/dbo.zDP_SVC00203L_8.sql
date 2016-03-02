SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00203L_8] (@SRVRECTYPE_RS smallint, @LINITMTYP_RS char(3), @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @SRVRECTYPE_RE smallint, @LINITMTYP_RE char(3), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11)) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC00203 ORDER BY SRVRECTYPE DESC, LINITMTYP DESC, ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC00203 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY SRVRECTYPE DESC, LINITMTYP DESC, ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC00203 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY SRVRECTYPE DESC, LINITMTYP DESC, ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00203L_8] TO [DYNGRP]
GO
