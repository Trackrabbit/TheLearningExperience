SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30203F_4] (@SRVRECTYPE_RS smallint, @SRVSTAT_RS char(3), @LOCNCODE_RS char(11), @SRVRECTYPE_RE smallint, @SRVSTAT_RE char(3), @LOCNCODE_RE char(11)) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC30203 ORDER BY SRVRECTYPE ASC, SRVSTAT ASC, LOCNCODE ASC, DEX_ROW_ID ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC30203 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND SRVSTAT BETWEEN @SRVSTAT_RS AND @SRVSTAT_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY SRVRECTYPE ASC, SRVSTAT ASC, LOCNCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC30203 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND SRVSTAT BETWEEN @SRVSTAT_RS AND @SRVSTAT_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY SRVRECTYPE ASC, SRVSTAT ASC, LOCNCODE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30203F_4] TO [DYNGRP]
GO
