SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00701SS_7] (@ITEMNMBR char(31), @ITLOCN char(11)) AS  set nocount on SELECT TOP 1  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 WHERE ITEMNMBR = @ITEMNMBR AND ITLOCN = @ITLOCN ORDER BY ITEMNMBR ASC, ITLOCN ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00701SS_7] TO [DYNGRP]
GO
