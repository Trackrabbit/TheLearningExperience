SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00701SS_5] (@TRNSFLOC char(11), @ITEMNMBR char(31), @STATUS smallint, @ORDDOCID char(15), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC00701 WHERE TRNSFLOC = @TRNSFLOC AND ITEMNMBR = @ITEMNMBR AND STATUS = @STATUS AND ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ ORDER BY TRNSFLOC ASC, ITEMNMBR ASC, STATUS ASC, ORDDOCID ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00701SS_5] TO [DYNGRP]
GO
