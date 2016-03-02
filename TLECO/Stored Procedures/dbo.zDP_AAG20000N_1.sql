SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20000N_1] (@BS int, @aaSubLedgerHdrID int, @aaSubLedgerHdrID_RS int, @aaSubLedgerHdrID_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, Master_ID, PYRNTYPE, aaHdrErrors, DEX_ROW_ID FROM .AAG20000 WHERE ( aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, Master_ID, PYRNTYPE, aaHdrErrors, DEX_ROW_ID FROM .AAG20000 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS AND ( aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, Master_ID, PYRNTYPE, aaHdrErrors, DEX_ROW_ID FROM .AAG20000 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND ( aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20000N_1] TO [DYNGRP]
GO
