SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10201F_5] (@ITEMNMBR_RS char(31), @DOCDATE_RS datetime, @RCTSEQNM_RS int, @ITEMNMBR_RE char(31), @DOCDATE_RE datetime, @RCTSEQNM_RE int) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 ORDER BY ITEMNMBR ASC, DOCDATE ASC, RCTSEQNM ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 WHERE ITEMNMBR = @ITEMNMBR_RS AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE ORDER BY ITEMNMBR ASC, DOCDATE ASC, RCTSEQNM ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE ORDER BY ITEMNMBR ASC, DOCDATE ASC, RCTSEQNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10201F_5] TO [DYNGRP]
GO
