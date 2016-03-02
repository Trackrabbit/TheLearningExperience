SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG50002UN_2] (@BS int, @USERID char(15), @TRXBTCHSRC char(51), @aaSubLedgerHdrID int, @USERID_RS char(15), @TRXBTCHSRC_RS char(51), @aaSubLedgerHdrID_RS int, @USERID_RE char(15), @TRXBTCHSRC_RE char(51), @aaSubLedgerHdrID_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, SERIES, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DistRef, DEX_ROW_ID FROM .AAG50002 WHERE ( USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaSubLedgerHdrID > @aaSubLedgerHdrID OR USERID = @USERID AND TRXBTCHSRC > @TRXBTCHSRC OR USERID > @USERID ) ORDER BY USERID ASC, TRXBTCHSRC ASC, aaSubLedgerHdrID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, SERIES, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DistRef, DEX_ROW_ID FROM .AAG50002 WHERE USERID = @USERID_RS AND TRXBTCHSRC BETWEEN @TRXBTCHSRC_RS AND @TRXBTCHSRC_RE AND aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND ( USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaSubLedgerHdrID > @aaSubLedgerHdrID OR USERID = @USERID AND TRXBTCHSRC > @TRXBTCHSRC OR USERID > @USERID ) ORDER BY USERID ASC, TRXBTCHSRC ASC, aaSubLedgerHdrID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, TRXBTCHSRC, aaSubLedgerHdrID, aaSubLedgerDistID, aaSubLedgerAssignID, SERIES, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, DistRef, DEX_ROW_ID FROM .AAG50002 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND TRXBTCHSRC BETWEEN @TRXBTCHSRC_RS AND @TRXBTCHSRC_RE AND aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND ( USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaSubLedgerHdrID > @aaSubLedgerHdrID OR USERID = @USERID AND TRXBTCHSRC > @TRXBTCHSRC OR USERID > @USERID ) ORDER BY USERID ASC, TRXBTCHSRC ASC, aaSubLedgerHdrID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG50002UN_2] TO [DYNGRP]
GO
