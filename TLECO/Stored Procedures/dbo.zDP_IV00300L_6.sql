SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00300L_6] (@ITEMNMBR_RS char(31), @LOTNUMBR_RS char(21), @ITEMNMBR_RE char(31), @LOTNUMBR_RE char(21)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, LOTNUMBR, QTYRECVD, QTYSOLD, ATYALLOC, UNITCOST, RCTSEQNM, VNDRNMBR, LTNUMSLD, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV00300 ORDER BY ITEMNMBR DESC, LOTNUMBR DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, LOTNUMBR, QTYRECVD, QTYSOLD, ATYALLOC, UNITCOST, RCTSEQNM, VNDRNMBR, LTNUMSLD, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV00300 WHERE ITEMNMBR = @ITEMNMBR_RS AND LOTNUMBR BETWEEN @LOTNUMBR_RS AND @LOTNUMBR_RE ORDER BY ITEMNMBR DESC, LOTNUMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, LOTNUMBR, QTYRECVD, QTYSOLD, ATYALLOC, UNITCOST, RCTSEQNM, VNDRNMBR, LTNUMSLD, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV00300 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOTNUMBR BETWEEN @LOTNUMBR_RS AND @LOTNUMBR_RE ORDER BY ITEMNMBR DESC, LOTNUMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00300L_6] TO [DYNGRP]
GO