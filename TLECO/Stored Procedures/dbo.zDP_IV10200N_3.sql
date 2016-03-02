SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10200N_3] (@BS int, @RCPTSOLD tinyint, @ITEMNMBR char(31), @DEX_ROW_ID int, @RCPTSOLD_RS tinyint, @ITEMNMBR_RS char(31), @RCPTSOLD_RE tinyint, @ITEMNMBR_RE char(31)) AS  set nocount on IF @RCPTSOLD_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE ( RCPTSOLD = @RCPTSOLD AND ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR RCPTSOLD = @RCPTSOLD AND ITEMNMBR > @ITEMNMBR OR RCPTSOLD > @RCPTSOLD ) ORDER BY RCPTSOLD ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @RCPTSOLD_RS = @RCPTSOLD_RE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE RCPTSOLD = @RCPTSOLD_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( RCPTSOLD = @RCPTSOLD AND ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR RCPTSOLD = @RCPTSOLD AND ITEMNMBR > @ITEMNMBR OR RCPTSOLD > @RCPTSOLD ) ORDER BY RCPTSOLD ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE RCPTSOLD BETWEEN @RCPTSOLD_RS AND @RCPTSOLD_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( RCPTSOLD = @RCPTSOLD AND ITEMNMBR = @ITEMNMBR AND DEX_ROW_ID > @DEX_ROW_ID OR RCPTSOLD = @RCPTSOLD AND ITEMNMBR > @ITEMNMBR OR RCPTSOLD > @RCPTSOLD ) ORDER BY RCPTSOLD ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10200N_3] TO [DYNGRP]
GO