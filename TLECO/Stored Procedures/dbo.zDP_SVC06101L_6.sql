SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06101L_6] (@WORECTYPE_RS smallint, @LINITMTYP_RS char(3), @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @WORECTYPE_RE smallint, @LINITMTYP_RE char(3), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11)) AS  set nocount on IF @WORECTYPE_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMUSETYPE, ITEMDESC, STATIONID, LOCNCODE, UOFM, TECHID, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, STRTDATE, STRTTIME, ENDDATE, ENDTIME, TRANSTME, BILLABLTIM, NOTEINDX, SEQUENCE1, ORDDOCID, TRANSLINESEQ, PONMBRSTR, POLNSEQ, FUFILDAT, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC06101 ORDER BY WORECTYPE DESC, LINITMTYP DESC, ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END ELSE IF @WORECTYPE_RS = @WORECTYPE_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMUSETYPE, ITEMDESC, STATIONID, LOCNCODE, UOFM, TECHID, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, STRTDATE, STRTTIME, ENDDATE, ENDTIME, TRANSTME, BILLABLTIM, NOTEINDX, SEQUENCE1, ORDDOCID, TRANSLINESEQ, PONMBRSTR, POLNSEQ, FUFILDAT, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC06101 WHERE WORECTYPE = @WORECTYPE_RS AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY WORECTYPE DESC, LINITMTYP DESC, ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMUSETYPE, ITEMDESC, STATIONID, LOCNCODE, UOFM, TECHID, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, STRTDATE, STRTTIME, ENDDATE, ENDTIME, TRANSTME, BILLABLTIM, NOTEINDX, SEQUENCE1, ORDDOCID, TRANSLINESEQ, PONMBRSTR, POLNSEQ, FUFILDAT, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC06101 WHERE WORECTYPE BETWEEN @WORECTYPE_RS AND @WORECTYPE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE ORDER BY WORECTYPE DESC, LINITMTYP DESC, ITEMNMBR DESC, LOCNCODE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06101L_6] TO [DYNGRP]
GO
