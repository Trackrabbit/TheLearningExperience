SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10201SS_5] (@ITEMNMBR char(31), @DOCDATE datetime, @RCTSEQNM int) AS  set nocount on SELECT TOP 1  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 WHERE ITEMNMBR = @ITEMNMBR AND DOCDATE = @DOCDATE AND RCTSEQNM = @RCTSEQNM ORDER BY ITEMNMBR ASC, DOCDATE ASC, RCTSEQNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10201SS_5] TO [DYNGRP]
GO
