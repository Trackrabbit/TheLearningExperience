SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00701VSS_3] (@ORDDOCID char(15), @TRNSTLOC char(11), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ORDDOCID = @ORDDOCID AND TRNSTLOC = @TRNSTLOC AND ITEMNMBR = @ITEMNMBR ORDER BY ORDDOCID ASC, TRNSTLOC ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00701VSS_3] TO [DYNGRP]
GO
