SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG50002SS_1] (@aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int) AS  set nocount on SELECT TOP 1  USERID, TRXBTCHSRC, aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, SERIES, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DistRef, DEX_ROW_ID FROM .AAG50002 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID = @aaSubLedgerDistID AND aaSubLedgerAssignID = @aaSubLedgerAssignID ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, aaSubLedgerAssignID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG50002SS_1] TO [DYNGRP]
GO
