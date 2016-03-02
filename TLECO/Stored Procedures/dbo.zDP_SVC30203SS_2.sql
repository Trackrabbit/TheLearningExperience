SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30203SS_2] (@SRVRECTYPE smallint, @SRVSTAT char(3), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  SRVRECTYPE, CALLNBR, EQPLINE, LNITMSEQ, LINITMTYP, SRVSTAT, TECHID, ITEMNMBR, ITEMUSETYPE, ITEMDESC, LOCNCODE, UOFM, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, NOTEINDX, STRTDATE, STRTTIME, ENDDATE, ENDTME, TRANSTME, BILLABLTIM, TRNSFLOC, TRNSFQTY, TRNFLAG, ORDDOCID, TRANSLINESEQ, LABPCT, PARTPCT, MISCPCT, FUFILDAT, PONMBRSTR, POLNSEQ, On_Return, RETDOCID, LNSEQNBR, Miles_Start, Miles_End, Miles_Used, PRICELVL, SVC_Address_Option, SVC_Misc_Address_Code, SVC_Disable_XFR_Grouping, Work_Type, ORUNTCST, ORUNTPRC, OREXTCST, OXTNDPRC, TAXAMNT, ORTAXAMT, SVC_FO_ID, svcCreateVoucher, VCHRNMBR, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC30203 WHERE SRVRECTYPE = @SRVRECTYPE AND SRVSTAT = @SRVSTAT AND ITEMNMBR = @ITEMNMBR ORDER BY SRVRECTYPE ASC, SRVSTAT ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30203SS_2] TO [DYNGRP]
GO
