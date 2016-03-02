SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20001F_6] (@aaSubLedgerHdrID_RS int, @aaSubLedgerDistID_RS int, @SEQNUMBR_RS int, @ACTINDX_RS int, @PYRLRTYP_RS smallint, @TRXNUMBER_RS int, @aaSubLedgerHdrID_RE int, @aaSubLedgerDistID_RE int, @SEQNUMBR_RE int, @ACTINDX_RE int, @PYRLRTYP_RE smallint, @TRXNUMBER_RE int) AS  set nocount on IF @aaSubLedgerHdrID_RS IS NULL BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, SEQNUMBR ASC, ACTINDX ASC, PYRLRTYP ASC, TRXNUMBER ASC, DEX_ROW_ID ASC END ELSE IF @aaSubLedgerHdrID_RS = @aaSubLedgerHdrID_RE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID_RS AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, SEQNUMBR ASC, ACTINDX ASC, PYRLRTYP ASC, TRXNUMBER ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE aaSubLedgerHdrID BETWEEN @aaSubLedgerHdrID_RS AND @aaSubLedgerHdrID_RE AND aaSubLedgerDistID BETWEEN @aaSubLedgerDistID_RS AND @aaSubLedgerDistID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND PYRLRTYP BETWEEN @PYRLRTYP_RS AND @PYRLRTYP_RE AND TRXNUMBER BETWEEN @TRXNUMBER_RS AND @TRXNUMBER_RE ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, SEQNUMBR ASC, ACTINDX ASC, PYRLRTYP ASC, TRXNUMBER ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20001F_6] TO [DYNGRP]
GO
