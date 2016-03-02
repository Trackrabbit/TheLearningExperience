SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10200N_1] (@BS int, @ITEMNMBR char(31), @TRXLOCTN char(11), @QTYTYPE smallint, @DATERECD datetime, @RCTSEQNM int, @ITEMNMBR_RS char(31), @TRXLOCTN_RS char(11), @QTYTYPE_RS smallint, @DATERECD_RS datetime, @RCTSEQNM_RS int, @ITEMNMBR_RE char(31), @TRXLOCTN_RE char(11), @QTYTYPE_RE smallint, @DATERECD_RE datetime, @RCTSEQNM_RE int) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE ( ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE = @QTYTYPE AND DATERECD = @DATERECD AND RCTSEQNM > @RCTSEQNM OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE = @QTYTYPE AND DATERECD > @DATERECD OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE > @QTYTYPE OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN > @TRXLOCTN OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, QTYTYPE ASC, DATERECD ASC, RCTSEQNM ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE ITEMNMBR = @ITEMNMBR_RS AND TRXLOCTN BETWEEN @TRXLOCTN_RS AND @TRXLOCTN_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE AND ( ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE = @QTYTYPE AND DATERECD = @DATERECD AND RCTSEQNM > @RCTSEQNM OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE = @QTYTYPE AND DATERECD > @DATERECD OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE > @QTYTYPE OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN > @TRXLOCTN OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, QTYTYPE ASC, DATERECD ASC, RCTSEQNM ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND TRXLOCTN BETWEEN @TRXLOCTN_RS AND @TRXLOCTN_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE AND ( ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE = @QTYTYPE AND DATERECD = @DATERECD AND RCTSEQNM > @RCTSEQNM OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE = @QTYTYPE AND DATERECD > @DATERECD OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND QTYTYPE > @QTYTYPE OR ITEMNMBR = @ITEMNMBR AND TRXLOCTN > @TRXLOCTN OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, QTYTYPE ASC, DATERECD ASC, RCTSEQNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10200N_1] TO [DYNGRP]
GO
