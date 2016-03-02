SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10201N_2] (@BS int, @ITEMNMBR char(31), @SRCRCTSEQNM int, @PCHSRCTY smallint, @DEX_ROW_ID int, @ITEMNMBR_RS char(31), @SRCRCTSEQNM_RS int, @PCHSRCTY_RS smallint, @ITEMNMBR_RE char(31), @SRCRCTSEQNM_RE int, @PCHSRCTY_RE smallint) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 WHERE ( ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM = @SRCRCTSEQNM AND PCHSRCTY = @PCHSRCTY AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM = @SRCRCTSEQNM AND PCHSRCTY > @PCHSRCTY OR ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM > @SRCRCTSEQNM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SRCRCTSEQNM ASC, PCHSRCTY ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 WHERE ITEMNMBR = @ITEMNMBR_RS AND SRCRCTSEQNM BETWEEN @SRCRCTSEQNM_RS AND @SRCRCTSEQNM_RE AND PCHSRCTY BETWEEN @PCHSRCTY_RS AND @PCHSRCTY_RE AND ( ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM = @SRCRCTSEQNM AND PCHSRCTY = @PCHSRCTY AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM = @SRCRCTSEQNM AND PCHSRCTY > @PCHSRCTY OR ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM > @SRCRCTSEQNM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SRCRCTSEQNM ASC, PCHSRCTY ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, QTYTYPE, DOCDATE, RCTSEQNM, ORIGINDOCTYPE, ORIGINDOCID, LNSEQNBR, CMPNTSEQ, QTYSOLD, UNITCOST, IVIVINDX, IVIVOFIX, SRCRCTSEQNM, TRXREFERENCE, PCHSRCTY, DEX_ROW_ID FROM .IV10201 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SRCRCTSEQNM BETWEEN @SRCRCTSEQNM_RS AND @SRCRCTSEQNM_RE AND PCHSRCTY BETWEEN @PCHSRCTY_RS AND @PCHSRCTY_RE AND ( ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM = @SRCRCTSEQNM AND PCHSRCTY = @PCHSRCTY AND DEX_ROW_ID > @DEX_ROW_ID OR ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM = @SRCRCTSEQNM AND PCHSRCTY > @PCHSRCTY OR ITEMNMBR = @ITEMNMBR AND SRCRCTSEQNM > @SRCRCTSEQNM OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, SRCRCTSEQNM ASC, PCHSRCTY ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10201N_2] TO [DYNGRP]
GO