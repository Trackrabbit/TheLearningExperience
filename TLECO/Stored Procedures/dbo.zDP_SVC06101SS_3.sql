SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06101SS_3] (@WORECTYPE smallint, @WORKORDNUM char(11), @STATIONID char(11)) AS  set nocount on SELECT TOP 1  WORECTYPE, WORKORDNUM, WOSTAT, LINITMTYP, LNITMSEQ, ITEMNMBR, ITEMUSETYPE, ITEMDESC, STATIONID, LOCNCODE, UOFM, TECHID, QTYORDER, ATYALLOC, QTYBACKO, QTYSOLD, UNITCOST, UNITPRCE, EXTDCOST, XTNDPRCE, STRTDATE, STRTTIME, ENDDATE, ENDTIME, TRANSTME, BILLABLTIM, NOTEINDX, SEQUENCE1, ORDDOCID, TRANSLINESEQ, PONMBRSTR, POLNSEQ, FUFILDAT, CMPNTSEQ, CMPITQTY, DEX_ROW_ID FROM .SVC06101 WHERE WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND STATIONID = @STATIONID ORDER BY WORECTYPE ASC, WORKORDNUM ASC, STATIONID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06101SS_3] TO [DYNGRP]
GO
