SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20003SS_1] (@aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerAssignID int, @aaTrxDimID int) AS  set nocount on SELECT TOP 1  aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, aaTrxDimID, aaTrxCodeID, aaCodeErrors, DEX_ROW_ID FROM .AAG20003 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID = @aaSubLedgerDistID AND aaSubLedgerAssignID = @aaSubLedgerAssignID AND aaTrxDimID = @aaTrxDimID ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, aaSubLedgerAssignID ASC, aaTrxDimID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20003SS_1] TO [DYNGRP]
GO
