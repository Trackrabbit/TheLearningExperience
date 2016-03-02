SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00701VF_2] (@ORDDOCID_RS char(15), @ITEMNMBR_RS char(31), @ORDDOCID_RE char(15), @ITEMNMBR_RE char(31)) AS  set nocount on IF @ORDDOCID_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V ORDER BY ORDDOCID ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @ORDDOCID_RS = @ORDDOCID_RE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ORDDOCID = @ORDDOCID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY ORDDOCID ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY ORDDOCID ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00701VF_2] TO [DYNGRP]
GO
