SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00701VN_1] (@BS int, @ORDDOCID char(15), @LNITMSEQ int, @ORDDOCID_RS char(15), @LNITMSEQ_RS int, @ORDDOCID_RE char(15), @LNITMSEQ_RE int) AS  set nocount on IF @ORDDOCID_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ( ORDDOCID = @ORDDOCID AND LNITMSEQ > @LNITMSEQ OR ORDDOCID > @ORDDOCID ) ORDER BY ORDDOCID ASC, LNITMSEQ ASC END ELSE IF @ORDDOCID_RS = @ORDDOCID_RE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ORDDOCID = @ORDDOCID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( ORDDOCID = @ORDDOCID AND LNITMSEQ > @LNITMSEQ OR ORDDOCID > @ORDDOCID ) ORDER BY ORDDOCID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, Status, ITEMNMBR, DSCRIPTN, UOFM, UMQTYINB, QTYFROM, QTYFULFI, QTYSHPPD, QTYREMAI, QTYRECVD, TRXLOCTN, VIALOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, DEX_ROW_ID FROM .IV00701V WHERE ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( ORDDOCID = @ORDDOCID AND LNITMSEQ > @LNITMSEQ OR ORDDOCID > @ORDDOCID ) ORDER BY ORDDOCID ASC, LNITMSEQ ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00701VN_1] TO [DYNGRP]
GO
