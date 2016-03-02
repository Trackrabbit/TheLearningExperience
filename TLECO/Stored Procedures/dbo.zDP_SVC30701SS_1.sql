SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30701SS_1] (@ORDDOCID char(15), @LNITMSEQ int, @STATUS smallint) AS  set nocount on SELECT TOP 1  ORDDOCID, LNITMSEQ, STATUS, ITEMNMBR, DSCRIPTN, UOFM, TRNSFQTY, QTYFULFI, QTYSHPPD, QTY_To_Receive, QTYRECVD, CALLNBR, SRVRECTYPE, SERVLITEMSEQ, EQPLINE, LINITMTYP, RETDOCID, LNSEQNBR, RTV_Number, WORECTYPE, WORKORDNUM, QTYBSUOM, TRNSFLOC, ITLOCN, TRNSTLOC, TRFQTYTY, TRTQTYTY, DECPLCUR, DECPLQTY, Landed_Cost_Group_ID, Reason_Code, DEX_ROW_ID FROM .SVC30701 WHERE ORDDOCID = @ORDDOCID AND LNITMSEQ = @LNITMSEQ AND STATUS = @STATUS ORDER BY ORDDOCID ASC, LNITMSEQ ASC, STATUS ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30701SS_1] TO [DYNGRP]
GO
