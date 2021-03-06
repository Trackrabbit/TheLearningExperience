SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20000L_1] (@aaSubLedgerHdrID_RS int, @aaSubLedgerHdrID_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, Master_ID, PYRNTYPE, aaHdrErrors, DEX_ROW_ID FROM .AAG20000 ORDER BY aaSubLedgerHdrID DESC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, Master_ID, PYRNTYPE, aaHdrErrors, DEX_ROW_ID FROM .AAG20000 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS ORDER BY aaSubLedgerHdrID DESC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, Master_ID, PYRNTYPE, aaHdrErrors, DEX_ROW_ID FROM .AAG20000 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE ORDER BY aaSubLedgerHdrID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20000L_1] TO [DYNGRP]
GO
