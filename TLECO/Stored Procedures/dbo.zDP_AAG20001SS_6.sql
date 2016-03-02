SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG20001SS_6] (@aaSubLedgerHdrID int, @aaSubLedgerDistID int, @SEQNUMBR int, @ACTINDX int, @PYRLRTYP smallint, @TRXNUMBER int) AS  set nocount on SELECT TOP 1  aaSubLedgerHdrID, aaSubLedgerDistID, INTERID, CorrespondingUnit, ACTINDX, DISTTYPE, ACCTTYPE, aaBrowseType, DECPLACS, DEBITAMT, CRDTAMNT, ORDBTAMT, ORCRDAMT, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DENXRATE, MCTRXSTT, SEQNUMBR, GLPOSTDT, aaCustID, aaVendID, aaSiteID, aaItemID, EMPLOYID, aaAssetID, aaBookID, aaCopyStatus, aaWinWasOpen, POSTED, HISTORY, aaDistErrors, APTVCHNM, APTODCTY, aaFutureDist, aaOffsetAcct, ITEMNMBR, TRXLOCTN, BINNMBR, TRNSTLOC, TRXQTY, PYRLRTYP, TRXNUMBER, aaChangeDate, aaChangeTime, DEX_ROW_ID FROM .AAG20001 WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID AND aaSubLedgerDistID = @aaSubLedgerDistID AND SEQNUMBR = @SEQNUMBR AND ACTINDX = @ACTINDX AND PYRLRTYP = @PYRLRTYP AND TRXNUMBER = @TRXNUMBER ORDER BY aaSubLedgerHdrID ASC, aaSubLedgerDistID ASC, SEQNUMBR ASC, ACTINDX ASC, PYRLRTYP ASC, TRXNUMBER ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG20001SS_6] TO [DYNGRP]
GO
