SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06101L_7] (@WORECTYPE_RS smallint, @WORKORDNUM_RS char(11), @LINITMTYP_RS char(3), @LNITMSEQ_RS int, @CMPNTSEQ_RS int, @WORECTYPE_RE smallint, @WORKORDNUM_RE char(11), @LINITMTYP_RE char(3), @LNITMSEQ_RE int, @CMPNTSEQ_RE int) AS  set nocount on IF @WORECTYPE_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMUSETYPE, ITEMDESC, STATIONID, LOCNCODE, UOFM, TECHID, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, STRTDATE, STRTTIME, ENDDATE, ENDTIME, TRANSTME, BILLABLTIM, NOTEINDX, SEQUENCE1, ORDDOCID, TRANSLINESEQ, PONMBRSTR, POLNSEQ, FUFILDAT, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC06101 ORDER BY WORECTYPE DESC, WORKORDNUM DESC, LINITMTYP DESC, LNITMSEQ DESC, CMPNTSEQ DESC END ELSE IF @WORECTYPE_RS = @WORECTYPE_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMUSETYPE, ITEMDESC, STATIONID, LOCNCODE, UOFM, TECHID, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, STRTDATE, STRTTIME, ENDDATE, ENDTIME, TRANSTME, BILLABLTIM, NOTEINDX, SEQUENCE1, ORDDOCID, TRANSLINESEQ, PONMBRSTR, POLNSEQ, FUFILDAT, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC06101 WHERE WORECTYPE = @WORECTYPE_RS AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE ORDER BY WORECTYPE DESC, WORKORDNUM DESC, LINITMTYP DESC, LNITMSEQ DESC, CMPNTSEQ DESC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, WOSTAT, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMUSETYPE, ITEMDESC, STATIONID, LOCNCODE, UOFM, TECHID, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, STRTDATE, STRTTIME, ENDDATE, ENDTIME, TRANSTME, BILLABLTIM, NOTEINDX, SEQUENCE1, ORDDOCID, TRANSLINESEQ, PONMBRSTR, POLNSEQ, FUFILDAT, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC06101 WHERE WORECTYPE BETWEEN @WORECTYPE_RS AND @WORECTYPE_RE AND WORKORDNUM BETWEEN @WORKORDNUM_RS AND @WORKORDNUM_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE ORDER BY WORECTYPE DESC, WORKORDNUM DESC, LINITMTYP DESC, LNITMSEQ DESC, CMPNTSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06101L_7] TO [DYNGRP]
GO
