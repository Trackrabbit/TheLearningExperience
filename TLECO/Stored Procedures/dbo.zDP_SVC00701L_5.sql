SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00701L_5] (@TRNSFLOC_RS char(11), @ITEMNMBR_RS char(31), @STATUS_RS smallint, @ORDDOCID_RS char(15), @LNITMSEQ_RS int, @TRNSFLOC_RE char(11), @ITEMNMBR_RE char(31), @STATUS_RE smallint, @ORDDOCID_RE char(15), @LNITMSEQ_RE int) AS  set nocount on IF @TRNSFLOC_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 ORDER BY TRNSFLOC DESC, ITEMNMBR DESC, STATUS DESC, ORDDOCID DESC, LNITMSEQ DESC END ELSE IF @TRNSFLOC_RS = @TRNSFLOC_RE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 WHERE TRNSFLOC = @TRNSFLOC_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND STATUS BETWEEN @STATUS_RS AND @STATUS_RE AND ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY TRNSFLOC DESC, ITEMNMBR DESC, STATUS DESC, ORDDOCID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 WHERE TRNSFLOC BETWEEN @TRNSFLOC_RS AND @TRNSFLOC_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND STATUS BETWEEN @STATUS_RS AND @STATUS_RE AND ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY TRNSFLOC DESC, ITEMNMBR DESC, STATUS DESC, ORDDOCID DESC, LNITMSEQ DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00701L_5] TO [DYNGRP]
GO
