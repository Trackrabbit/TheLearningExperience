SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[aagCreateSubLedgerFAProcessAfter]  @I_aaBatchNumber VARCHAR(17),  @I_nCompanyID SMALLINT AS BEGIN   DECLARE   @nSubledgerHdrID INTEGER,  @nDistID INTEGER,  @aaSubLedgerAssignID INTEGER,   @TRXNUMBER INTEGER,  @ASSETINDEX INTEGER,  @BOOKINDX INTEGER,  @FA_Doc_Number CHAR(17),  @ACTINDX INTEGER,  @OldaaSubLedgerHdrID INTEGER,  @OldaaSubLedgerDistID INTEGER,  @OldaaSubLedgerAssignID INTEGER,  @OldDEBITAMT NUMERIC(19,5),  @OldCRDTAMNT NUMERIC(19,5),  @OldORDBTAMT NUMERIC(19,5),  @OldORCRDAMT NUMERIC(19,5),  @OldaaAssignedPercent INTEGER,  @OldaaAliasID INTEGER,  @ClassID SMALLINT,  @oRequiredFieldEmpty SMALLINT,  @aaBrowseTypeNew SMALLINT,  @nStatus SMALLINT,  @aaAssetID VARCHAR(100),  @aaBookID VARCHAR(100),  @AcctLinked TINYINT,  @TrackCust     TINYINT,  @TrackVend     TINYINT,  @TrackItem     TINYINT,  @TrackSite     TINYINT,  @TrackEmpl     TINYINT,  @TrackAsset TINYINT,  @TrackBook     TINYINT,  @DistRef CHAR(31),  @NOTEINDX NUMERIC(19,5),  @aaAssignErrors BINARY   SELECT @nDistID = 1   SELECT @nSubledgerHdrID = 0,@aaAssetID ='', @aaBookID ='',@OldaaSubLedgerHdrID =0,@OldaaSubLedgerDistID =0  SELECT TOP 1 @nSubledgerHdrID = ISNULL(aaSubLedgerHdrID,0) FROM AAG20000 WHERE DOCNUMBR = @I_aaBatchNumber AND SERIES = 2 AND DOCTYPE = 0  IF @nSubledgerHdrID = 0  BEGIN  EXEC DYNAMICS.dbo.aagGetNextID   20000,   @I_nCompanyID,   @nSubledgerHdrID OUT,   @nStatus OUT    INSERT INTO AAG20000(aaSubLedgerHdrID, SERIES, DOCTYPE, DOCNUMBR)   VALUES(@nSubledgerHdrID, 2,0,@I_aaBatchNumber)  END   DECLARE FASubLedgerLine CURSOR FAST_FORWARD FOR  SELECT FA00905.FINANCIALINDX,FA00905.ASSETINDEX,FA00905.BOOKINDX,FA00902.FA_Doc_Number,FA00902.GLINTACCTINDX FROM FA00905 INNER JOIN FA00902 ON FA00902.FINANCIALINDX = FA00905.FINANCIALINDX WHERE FA00905.GLINTBTCHNUM = @I_aaBatchNumber  ORDER BY FA00905.DEX_ROW_ID ASC  OPEN FASubLedgerLine  FETCH NEXT FROM FASubLedgerLine   INTO @TRXNUMBER,@ASSETINDEX,@BOOKINDX,@FA_Doc_Number,@ACTINDX  WHILE @@FETCH_STATUS = 0  BEGIN  EXEC aagIsAcctLinkedToClass   @ACTINDX,   @AcctLinked OUT,   @TrackCust OUT,   @TrackVend OUT,   @TrackItem OUT,   @TrackSite OUT,  @TrackEmpl OUT,  @TrackAsset OUT,  @TrackBook OUT  SELECT @aaAssetID = CASE @TrackAsset WHEN 1 THEN  RTRIM(ASSETID) + '-' + CONVERT(VARCHAR(4),ASSETIDSUF) ELSE '' END FROM FA00100 WHERE ASSETINDEX = @ASSETINDEX   SELECT @aaBookID = CASE @TrackBook WHEN 1 THEN BOOKID ELSE '' END FROM FA40200 WHERE FA40200.BOOKINDX = @BOOKINDX   SELECT @OldaaSubLedgerHdrID = A0.aaSubLedgerHdrID , @OldaaSubLedgerDistID = A1.aaSubLedgerDistID FROM AAG20001 A1   INNER JOIN AAG20000 A0 ON A1.aaSubLedgerHdrID = A0.aaSubLedgerHdrID  WHERE A0.aaSubLedgerHdrID <> @nSubledgerHdrID AND A0.SERIES = 2 AND RTRIM(A1.TRXNUMBER) = RTRIM(@TRXNUMBER)   INSERT INTO AAG20001 ([aaSubLedgerHdrID], [aaSubLedgerDistID], [INTERID], [CorrespondingUnit], [ACTINDX], [DISTTYPE], [ACCTTYPE], [aaBrowseType],   [DECPLACS], [DEBITAMT], [CRDTAMNT], [ORDBTAMT], [ORCRDAMT], [CURNCYID], [CURRNIDX], [RATETPID], [EXGTBLID], [XCHGRATE], [EXCHDATE], [TIME1],   [RTCLCMTD], [DENXRATE], [MCTRXSTT], [SEQNUMBR], [GLPOSTDT], [aaCustID], [aaVendID], [aaSiteID], [aaItemID], [aaAssetID], [aaBookID], [aaCopyStatus], [aaWinWasOpen],   [POSTED], [HISTORY], [aaDistErrors], [APTVCHNM], [APTODCTY], [aaFutureDist], [aaOffsetAcct], [ITEMNMBR], [TRXLOCTN], [TRNSTLOC], [BINNMBR], [TRXQTY],[TRXNUMBER],  [aaChangeDate],[aaChangeTime])  SELECT @nSubledgerHdrID, @nDistID, [INTERID], [CorrespondingUnit], [ACTINDX], [DISTTYPE], [ACCTTYPE], [aaBrowseType], [DECPLACS], [DEBITAMT],   [CRDTAMNT], [ORDBTAMT], [ORCRDAMT], [CURNCYID], [CURRNIDX], [RATETPID], [EXGTBLID], [XCHGRATE], [EXCHDATE], [TIME1], [RTCLCMTD], [DENXRATE],   [MCTRXSTT], [SEQNUMBR], [GLPOSTDT], [aaCustID], [aaVendID], [aaSiteID], [aaItemID], [aaAssetID], [aaBookID], [aaCopyStatus], [aaWinWasOpen], [POSTED], [HISTORY],   [aaDistErrors], [APTVCHNM], [APTODCTY], [aaFutureDist], [aaOffsetAcct], [ITEMNMBR], [TRXLOCTN], [TRNSTLOC], [BINNMBR], [TRXQTY],[TRXNUMBER],  CONVERT(CHAR(12), GETDATE(), 102), CONVERT(CHAR(12), GETDATE(), 108)  FROM AAG20001 WHERE aaSubLedgerHdrID = @OldaaSubLedgerHdrID AND aaSubLedgerDistID = @OldaaSubLedgerDistID   SET @aaSubLedgerAssignID = 1    UPDATE AAG20001 SET aaAssetID = CASE @TrackAsset WHEN 1 THEN aaAssetID ELSE '' END, aaBookID = CASE @TrackBook WHEN 1 THEN aaBookID ELSE '' END WHERE aaSubLedgerHdrID=@nSubledgerHdrID AND aaSubLedgerDistID = @nDistID  EXEC aagGetClassIDBrowseType   @ACTINDX,   @ClassID OUTPUT,   @aaBrowseTypeNew OUTPUT    DECLARE Assign CURSOR FAST_FORWARD FOR  SELECT aaSubLedgerAssignID,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,DistRef, NOTEINDX, aaAssignErrors, aaAliasID FROM AAG20002 WHERE aaSubLedgerHdrID = @OldaaSubLedgerHdrID AND aaSubLedgerDistID = @OldaaSubLedgerDistID  ORDER BY aaSubLedgerAssignID ASC  OPEN Assign  FETCH NEXT FROM Assign   INTO @OldaaSubLedgerAssignID,@OldDEBITAMT,@OldCRDTAMNT,@OldORDBTAMT,@OldORCRDAMT,@OldaaAssignedPercent,@DistRef,@NOTEINDX,@aaAssignErrors,@OldaaAliasID   WHILE @@FETCH_STATUS = 0  BEGIN   INSERT INTO AAG20002 ([aaSubLedgerHdrID], [aaSubLedgerDistID], [aaSubLedgerAssignID], [DEBITAMT], [CRDTAMNT], [ORDBTAMT], [ORCRDAMT], [aaAssignedPercent], [DistRef], [NOTEINDX], [aaAssignErrors], [aaAliasID])  VALUES(@nSubledgerHdrID, @nDistID,@aaSubLedgerAssignID,@OldDEBITAMT,@OldCRDTAMNT,@OldORDBTAMT,@OldORCRDAMT,@OldaaAssignedPercent,@DistRef,@NOTEINDX,@aaAssignErrors,@OldaaAliasID)   IF @aaBrowseTypeNew <> 0   AND NOT EXISTS  (SELECT 1 FROM AAG20003  WHERE aaSubLedgerHdrID = @nSubledgerHdrID  AND aaSubLedgerDistID = @nDistID  AND aaSubLedgerAssignID = @aaSubLedgerAssignID)  BEGIN   EXEC aagSubLedgerCodeUpdate   @nSubledgerHdrID,   @nDistID,   @aaSubLedgerAssignID,   @ClassID,   @oRequiredFieldEmpty OUTPUT    SET @aaBrowseTypeNew = 0    UPDATE AAG20003 SET AAG20003.aaTrxCodeID = A2.aaTrxCodeID FROM AAG20003 INNER JOIN (SELECT aaSubLedgerAssignID,aaTrxDimID,aaTrxCodeID FROM AAG20003   WHERE aaSubLedgerHdrID = @OldaaSubLedgerHdrID AND aaSubLedgerDistID = @OldaaSubLedgerDistID AND aaSubLedgerAssignID=@OldaaSubLedgerAssignID) A2   ON AAG20003.aaSubLedgerAssignID=A2.aaSubLedgerAssignID AND AAG20003.aaTrxDimID=A2.aaTrxDimID AND AAG20003.aaSubLedgerHdrID=@nSubledgerHdrID AND aaSubLedgerDistID = @nDistID   END    SET @aaSubLedgerAssignID = @aaSubLedgerAssignID + 1  FETCH NEXT FROM Assign   INTO @OldaaSubLedgerAssignID,@OldDEBITAMT,@OldCRDTAMNT,@OldORDBTAMT,@OldORCRDAMT,@OldaaAssignedPercent,@DistRef,@NOTEINDX,@aaAssignErrors,@OldaaAliasID  END  CLOSE Assign  DEALLOCATE Assign    SET @nDistID = @nDistID + 1  SELECT @OldaaSubLedgerHdrID =0,@OldaaSubLedgerDistID = 0  FETCH NEXT FROM FASubLedgerLine   INTO @TRXNUMBER,@ASSETINDEX,@BOOKINDX,@FA_Doc_Number,@ACTINDX  END  CLOSE FASubLedgerLine  DEALLOCATE FASubLedgerLine  END   
GO
GRANT EXECUTE ON  [dbo].[aagCreateSubLedgerFAProcessAfter] TO [DYNGRP]
GO