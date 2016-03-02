SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60100SS_1] (@SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int, @CMPNTSEQ int) AS  set nocount on SELECT TOP 1  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, PONUMBER, ORD, RCTINVCERRORS, RCPTCOST, RCPTPRIORITY, QTYONPO, QTYONPOBASE, QTYRECVD, QTYRECINBASE, RQSTFFDATE, QTYBSUOM, LOCNCODE, ITEMDESC, DOCDATE, UOFM, DEX_ROW_ID FROM .SOP60100 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, CMPNTSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60100SS_1] TO [DYNGRP]
GO
