SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00701VF_5] (@ITEMNMBR_RS char(31), @TRXLOCTN_RS char(11), @ITEMNMBR_RE char(31), @TRXLOCTN_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ITEMNMBR = @ITEMNMBR_RS AND TRXLOCTN BETWEEN @TRXLOCTN_RS AND @TRXLOCTN_RE ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND TRXLOCTN BETWEEN @TRXLOCTN_RS AND @TRXLOCTN_RE ORDER BY ITEMNMBR ASC, TRXLOCTN ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00701VF_5] TO [DYNGRP]
GO