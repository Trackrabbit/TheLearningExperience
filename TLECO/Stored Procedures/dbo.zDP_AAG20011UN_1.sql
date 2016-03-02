SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20011UN_1] (@BS int, @aaSubLedgerHdrID int, @aaSubLedgerDistID int, @aaSubLedgerHdrID_RS int, @aaSubLedgerDistID_RS int, @aaSubLedgerHdrID_RE int, @aaSubLedgerDistID_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, DEX_ROW_ID FROM .AAG20011 WHERE ( aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID > @aaSubLedgerDistID OR aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, DEX_ROW_ID ASC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, DEX_ROW_ID FROM .AAG20011 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND ( aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID > @aaSubLedgerDistID OR aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, ACCTTYPE, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, DEX_ROW_ID FROM .AAG20011 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND ( aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID > @aaSubLedgerDistID OR aaSubLedgerHdrID > @aaSubLedgerHdrID ) ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20011UN_1] TO [DYNGRP]
GO
