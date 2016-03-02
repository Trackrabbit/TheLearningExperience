SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10201SS_1] (@ITEMNMBR char(31), @TRXLOCTN char(11), @QTYTYPE smallint, @DOCDATE datetime, @RCTSEQNM int, @SRCRCTSEQNM int) AS  set nocount on SELECT TOP 1  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 WHERE ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE = @QTYTYPE AND DOCDATE = @DOCDATE AND RCTSEQNM = @RCTSEQNM AND SRCRCTSEQNM = @SRCRCTSEQNM ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, QTYTYPE ASC, DOCDATE ASC, RCTSEQNM ASC, SRCRCTSEQNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10201SS_1] TO [DYNGRP]
GO
