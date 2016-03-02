SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20001UN_2] (@BS int, @INTERID char(5), @aaSubLedgerHdrID int, @SEQNUMBR int, @INTERID_RS char(5), @aaSubLedgerHdrID_RS int, @SEQNUMBR_RS int, @INTERID_RE char(5), @aaSubLedgerHdrID_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @INTERID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE ( INTERID = @INTERID AND aaSubLedgerHdrID = @aaSubLedgerHdrID AND SEQNUMBR > @SEQNUMBR OR INTERID = @INTERID AND aaSubLedgerHdrID > @aaSubLedgerHdrID OR INTERID > @INTERID ) ORDER BY INTERID ASC, aaSubLedgerHdrID ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @INTERID_RS = @INTERID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE INTERID = @INTERID_RS AND aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( INTERID = @INTERID AND aaSubLedgerHdrID = @aaSubLedgerHdrID AND SEQNUMBR > @SEQNUMBR OR INTERID = @INTERID AND aaSubLedgerHdrID > @aaSubLedgerHdrID OR INTERID > @INTERID ) ORDER BY INTERID ASC, aaSubLedgerHdrID ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE INTERID BETWEEN @INTERID_RS AND @INTERID_RE AND aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( INTERID = @INTERID AND aaSubLedgerHdrID = @aaSubLedgerHdrID AND SEQNUMBR > @SEQNUMBR OR INTERID = @INTERID AND aaSubLedgerHdrID > @aaSubLedgerHdrID OR INTERID > @INTERID ) ORDER BY INTERID ASC, aaSubLedgerHdrID ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20001UN_2] TO [DYNGRP]
GO
