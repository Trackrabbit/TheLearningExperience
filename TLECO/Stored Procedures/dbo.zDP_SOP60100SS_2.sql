SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60100SS_2] (@PONUMBER char(17), @ORD int) AS  set nocount on SELECT TOP 1  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, PONUMBER, ORD, RCTINVCERRORS, RCPTCOST, RCPTPRIORITY, QTYONPO, QTYONPOBASE, QTYRECVD, QTYRECINBASE, RQSTFFDATE, QTYBSUOM, LOCNCODE, ITEMDESC, DOCDATE, UOFM, DEX_ROW_ID FROM .SOP60100 WHERE PONUMBER = @PONUMBER AND ORD = @ORD ORDER BY PONUMBER ASC, ORD ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60100SS_2] TO [DYNGRP]
GO
