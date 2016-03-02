SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00701UN_7] (@BS int, @ITEMNMBR char(31), @ITLOCN char(11), @ITEMNMBR_RS char(31), @ITLOCN_RS char(11), @ITEMNMBR_RE char(31), @ITLOCN_RE char(11)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 WHERE ( ITEMNMBR = @ITEMNMBR AND ITLOCN > @ITLOCN OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, ITLOCN ASC, DEX_ROW_ID ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 WHERE ITEMNMBR = @ITEMNMBR_RS AND ITLOCN BETWEEN @ITLOCN_RS AND @ITLOCN_RE AND ( ITEMNMBR = @ITEMNMBR AND ITLOCN > @ITLOCN OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, ITLOCN ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ITLOCN BETWEEN @ITLOCN_RS AND @ITLOCN_RE AND ( ITEMNMBR = @ITEMNMBR AND ITLOCN > @ITLOCN OR ITEMNMBR > @ITEMNMBR ) ORDER BY ITEMNMBR ASC, ITLOCN ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00701UN_7] TO [DYNGRP]
GO