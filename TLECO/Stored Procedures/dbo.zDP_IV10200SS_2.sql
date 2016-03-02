SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10200SS_2] (@ITEMNMBR char(31), @TRXLOCTN char(11), @RCPTSOLD tinyint, @QTYTYPE smallint, @DATERECD datetime, @RCTSEQNM int) AS  set nocount on SELECT TOP 1  ITEMNMBR, TRXLOCTN, DATERECD, RCTSEQNM, RCPTSOLD, QTYRECVD, QTYSOLD, QTYCOMTD, QTYRESERVED, FLRPLNDT, PCHSRCTY, RCPTNMBR, VENDORID, PORDNMBR, UNITCOST, QTYTYPE, Landed_Cost, NEGQTYSOPINV, VCTNMTHD, ADJUNITCOST, QTYONHND, DEX_ROW_ID FROM .IV10200 WHERE ITEMNMBR = @ITEMNMBR AND TRXLOCTN = @TRXLOCTN AND RCPTSOLD = @RCPTSOLD AND QTYTYPE = @QTYTYPE AND DATERECD = @DATERECD AND RCTSEQNM = @RCTSEQNM ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, RCPTSOLD ASC, QTYTYPE ASC, DATERECD ASC, RCTSEQNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10200SS_2] TO [DYNGRP]
GO
