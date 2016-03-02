SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG50000F_1] (@aaSubLedgerHdrID_RS int, @aaSubLedgerHdrID_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, PSTGDATE, aaOrder, DEX_ROW_ID FROM .AAG50000 ORDER BY aaSubLedgerHdrID ASC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, PSTGDATE, aaOrder, DEX_ROW_ID FROM .AAG50000 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS ORDER BY aaSubLedgerHdrID ASC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR, PSTGDATE, aaOrder, DEX_ROW_ID FROM .AAG50000 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE ORDER BY aaSubLedgerHdrID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG50000F_1] TO [DYNGRP]
GO
