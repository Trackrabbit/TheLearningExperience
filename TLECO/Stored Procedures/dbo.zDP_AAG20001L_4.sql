SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20001L_4] (@aaSubLedgerHdrID_RS int, @aaSubLedgerDistID_RS int, @SEQNUMBR_RS int, @APTVCHNM_RS char(21), @APTODCTY_RS smallint, @aaSubLedgerHdrID_RE int, @aaSubLedgerDistID_RE int, @SEQNUMBR_RE int, @APTVCHNM_RE char(21), @APTODCTY_RE smallint) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 ORDER BY aaSubLedgerHdrID DESC, aaSubLedgerDistID DESC, SEQNUMBR DESC, APTVCHNM DESC, APTODCTY DESC, DEX_ROW_ID DESC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE ORDER BY aaSubLedgerHdrID DESC, aaSubLedgerDistID DESC, SEQNUMBR DESC, APTVCHNM DESC, APTODCTY DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND APTVCHNM BETWEEN @APTVCHNM_RS AND @APTVCHNM_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE ORDER BY aaSubLedgerHdrID DESC, aaSubLedgerDistID DESC, SEQNUMBR DESC, APTVCHNM DESC, APTODCTY DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20001L_4] TO [DYNGRP]
GO
