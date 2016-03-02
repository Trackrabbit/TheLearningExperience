SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30203UN_6] (@BS int, @PONMBRSTR char(17), @POLNSEQ numeric(19,5), @PONMBRSTR_RS char(17), @POLNSEQ_RS numeric(19,5), @PONMBRSTR_RE char(17), @POLNSEQ_RE numeric(19,5)) AS  set nocount on IF @PONMBRSTR_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC30203 WHERE ( PONMBRSTR = @PONMBRSTR AND POLNSEQ > @POLNSEQ OR PONMBRSTR > @PONMBRSTR ) ORDER BY PONMBRSTR ASC, POLNSEQ ASC, DEX_ROW_ID ASC END ELSE IF @PONMBRSTR_RS = @PONMBRSTR_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC30203 WHERE PONMBRSTR = @PONMBRSTR_RS AND POLNSEQ BETWEEN @POLNSEQ_RS AND @POLNSEQ_RE AND ( PONMBRSTR = @PONMBRSTR AND POLNSEQ > @POLNSEQ OR PONMBRSTR > @PONMBRSTR ) ORDER BY PONMBRSTR ASC, POLNSEQ ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC30203 WHERE PONMBRSTR BETWEEN @PONMBRSTR_RS AND @PONMBRSTR_RE AND POLNSEQ BETWEEN @POLNSEQ_RS AND @POLNSEQ_RE AND ( PONMBRSTR = @PONMBRSTR AND POLNSEQ > @POLNSEQ OR PONMBRSTR > @PONMBRSTR ) ORDER BY PONMBRSTR ASC, POLNSEQ ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30203UN_6] TO [DYNGRP]
GO
