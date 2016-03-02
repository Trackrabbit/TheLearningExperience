SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20002SS_1] (@aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int) AS  set nocount on SELECT TOP 1  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, aaAssignedPercent, DistRef, NOTEINDX, aaAssignErrors, aaAliasID, DEX_ROW_ID FROM .AAG20002 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID = @aaSubLedgerDistID AND aaSubLedgerAssignID = @aaSubLedgerAssignID ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, aaSubLedgerAssignID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20002SS_1] TO [DYNGRP]
GO
