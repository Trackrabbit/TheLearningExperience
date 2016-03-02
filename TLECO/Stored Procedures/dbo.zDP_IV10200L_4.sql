SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10200L_4] (@ITEMNMBR_RS char(31), @DATERECD_RS datetime, @RCTSEQNM_RS int, @ITEMNMBR_RE char(31), @DATERECD_RE datetime, @RCTSEQNM_RE int) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 ORDER BY ITEMNMBR DESC, DATERECD DESC, RCTSEQNM DESC, DEX_ROW_ID DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE ITEMNMBR = @ITEMNMBR_RS AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE ORDER BY ITEMNMBR DESC, DATERECD DESC, RCTSEQNM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE ORDER BY ITEMNMBR DESC, DATERECD DESC, RCTSEQNM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10200L_4] TO [DYNGRP]
GO
