SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG50001L_1] (@aaSubLedgerHdrID_RS int, @aaSubLedgerDistID_RS int, @aaSubLedgerHdrID_RE int, @aaSubLedgerDistID_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaSubLedgerHdrID, aaSubLedgerDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, POSTED, DEX_ROW_ID FROM .AAG50001 ORDER BY aaSubLedgerHdrID DESC, aaSubLedgerDistID DESC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaSubLedgerHdrID, aaSubLedgerDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, POSTED, DEX_ROW_ID FROM .AAG50001 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE ORDER BY aaSubLedgerHdrID DESC, aaSubLedgerDistID DESC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaSubLedgerHdrID, aaSubLedgerDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, POSTED, DEX_ROW_ID FROM .AAG50001 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE ORDER BY aaSubLedgerHdrID DESC, aaSubLedgerDistID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG50001L_1] TO [DYNGRP]
GO