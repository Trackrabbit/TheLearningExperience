SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG50001N_2] (@BS int, @aaSubLedgerHdrID int, @POSTED tinyint, @aaSubLedgerDistID int, @DEX_ROW_ID int, @aaSubLedgerHdrID_RS int, @POSTED_RS tinyint, @aaSubLedgerDistID_RS int, @aaSubLedgerHdrID_RE int, @POSTED_RE tinyint, @aaSubLedgerDistID_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaSubLedgerHdrID, aaSubLedgerDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, POSTED, DEX_ROW_ID FROM .AAG50001 WHERE ( aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED = @POSTED AND aaSubLedgerDistID = @aaSubLedgerDistID AND DEX_ROW_ID > @DEX_ROW_ID OR aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED = @POSTED AND aaSubLedgerDistID > @aaSubLedgerDistID OR aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED > @POSTED OR aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC, POSTED ASC, aaSubLedgerDistID ASC, DEX_ROW_ID ASC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaSubLedgerHdrID, aaSubLedgerDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, POSTED, DEX_ROW_ID FROM .AAG50001 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND ( aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED = @POSTED AND aaSubLedgerDistID = @aaSubLedgerDistID AND DEX_ROW_ID > @DEX_ROW_ID OR aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED = @POSTED AND aaSubLedgerDistID > @aaSubLedgerDistID OR aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED > @POSTED OR aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC, POSTED ASC, aaSubLedgerDistID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, SERIES, aaSubLedgerHdrID, aaSubLedgerDistID, ACTINDX, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, POSTED, DEX_ROW_ID FROM .AAG50001 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND ( aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED = @POSTED AND aaSubLedgerDistID = @aaSubLedgerDistID AND DEX_ROW_ID > @DEX_ROW_ID OR aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED = @POSTED AND aaSubLedgerDistID > @aaSubLedgerDistID OR aaSubLedgerHdrID = @aaSubLedgerHdrID AND POSTED > @POSTED OR aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC, POSTED ASC, aaSubLedgerDistID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG50001N_2] TO [DYNGRP]
GO
