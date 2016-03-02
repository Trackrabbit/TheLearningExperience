SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[aagCreateSubLedgerDistFA]  @aaSubLedgerHdrID INT,  @DOCNUM CHAR(21),  @DOCTYPE SMALLINT,  @InterID CHAR(20),  @AAAliasID INT AS BEGIN  DECLARE @aaSubLedgerDistID INT,  @AcctIndex INT,  @AcctType INT,  @aaBrowseType INT,  @DEBITAMT NUMERIC(19,5),  @CRDTAMNT NUMERIC(19,5),  @ORDEBITAMT NUMERIC(19,5),  @ORCRDTAMNT NUMERIC(19,5),  @AssetID CHAR(20),  @BookID CHAR(15),  @tempBookID CHAR(15),  @TRXNMBR INT,  @tempTRXNMBR INT,  @AMOUNT NUMERIC(19,5),  @SEQNMBR INT,  @AcctClassID INT,  @AssetIndex INT,  @AssetSufIndex INT,  @BookIndex INT,  @aaFASetupID INT,  @ListID SMALLINT,  @FUNCRIDX SMALLINT,  @FUNLCURR CHAR(15)   SET @aaSubLedgerDistID=1  SET @SEQNMBR=16384  SELECT @FUNCRIDX=FUNCRIDX,@FUNLCURR=FUNLCURR FROM MC40000  IF (SELECT MIN(FINANCIALINDX) FROM FA00904) IS NOT NULL   UPDATE FAINDEX SET INDXVALUE=(SELECT MIN(FINANCIALINDX)-1 FROM FA00904) WHERE INDXNAME=6  DECLARE CREATEDIST CURSOR FAST_FORWARD FOR  SELECT A.FINANCIALINDX,B.ASSETINDEX,B.ASSETID,B.ASSETIDSUF,C.BOOKINDX,C.BOOKID,A.AMOUNT,A.TRANSACCTTYPE,A.GLINTACCTINDX   FROM FA00904 A INNER JOIN FA00100 B ON A.ASSETINDEX=B.ASSETINDEX   JOIN FA40200 C ON A.BOOKINDX=C.BOOKINDX  OPEN CREATEDIST  FETCH NEXT FROM CREATEDIST INTO @TRXNMBR,@AssetIndex,@AssetID,@AssetSufIndex,@BookIndex,@BookID,@AMOUNT,@AcctType,@AcctIndex  WHILE @@fetch_status = 0  BEGIN  IF @AMOUNT <= 0  BEGIN  SET @DEBITAMT=0  SET @CRDTAMNT=(-1)*@AMOUNT  END  ELSE  BEGIN  SET @DEBITAMT=@AMOUNT  SET @CRDTAMNT=0  END  SET @tempBookID=@BookID  SET @tempTRXNMBR=@TRXNMBR  IF @DOCTYPE=201   BEGIN   SET @TRXNMBR=0   SET @BookID=' '  END  EXEC aagGetClassIDBrowseType @AcctIndex,@AcctClassID OUTPUT,@aaBrowseType OUTPUT  SET @ORDEBITAMT=@DEBITAMT  SET @ORCRDTAMNT=@CRDTAMNT   INSERT INTO AAG20001  (aaSubLedgerHdrID,aaSubLedgerDistID,INTERID,ACTINDX,ACCTTYPE,aaBrowseType,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,SEQNUMBR,  aaAssetID,aaBookID,TRXNUMBER,aaChangeDate,aaChangeTime,CURRNIDX,CURNCYID)  VALUES(@aaSubLedgerHdrID,@aaSubLedgerDistID,@InterID,@AcctIndex,@AcctType,@aaBrowseType,@DEBITAMT,@CRDTAMNT,@ORDEBITAMT,@ORCRDTAMNT,  @SEQNMBR,rtrim(@AssetID)+'-'+convert(varchar(20),@AssetSufIndex),@BookID,@TRXNMBR,convert(char(12), getdate(), 102),convert(char(12), getdate(), 108),@FUNCRIDX,@FUNLCURR)  IF(SELECT COUNT(*) FROM AAG04000 WHERE  aaAssetIndex=@AssetIndex and aaBookIndex=@BookIndex and ACTINDX=@AcctIndex)>0  BEGIN  SELECT TOP 1 @aaFASetupID=aaFASetupID,@ListID=ListID,@AAAliasID=aaAliasID FROM AAG04000 WHERE  aaAssetIndex=@AssetIndex and aaBookIndex=@BookIndex and ACTINDX=@AcctIndex  END   ELSE IF (SELECT COUNT(*) FROM AAG04000 WHERE  aaAssetIndex=@AssetIndex and aaBookIndex=0 and ACTINDX=@AcctIndex)>0  BEGIN  SELECT TOP 1 @aaFASetupID=aaFASetupID,@ListID=ListID,@AAAliasID=aaAliasID FROM AAG04000 WHERE  aaAssetIndex=@AssetIndex and aaBookIndex=0 and ACTINDX=@AcctIndex  END   INSERT INTO AAG20002  (aaSubLedgerHdrID,aaSubLedgerDistID,aaSubLedgerAssignID,DEBITAMT,CRDTAMNT,ORDBTAMT,ORCRDAMT,aaAssignedPercent,aaAliasID)  VALUES(@aaSubLedgerHdrID,@aaSubLedgerDistID,1,@DEBITAMT,@CRDTAMNT,@DEBITAMT,@CRDTAMNT,10000,@AAAliasID)  EXEC aagCreateSubLedgerCodesFA @aaSubLedgerHdrID,@aaSubLedgerDistID,1,@AcctClassID,@aaFASetupID,@ListID   SET @aaSubLedgerDistID=@aaSubLedgerDistID+1  SET @SEQNMBR=@SEQNMBR+16384  DELETE FROM FA00904 WHERE FINANCIALINDX=@tempTRXNMBR  FETCH NEXT FROM CREATEDIST INTO @TRXNMBR,@AssetIndex,@AssetID,@AssetSufIndex,@BookIndex,@BookID,@AMOUNT,@AcctType,@AcctIndex   END  CLOSE CREATEDIST  DEALLOCATE CREATEDIST END    
GO
GRANT EXECUTE ON  [dbo].[aagCreateSubLedgerDistFA] TO [DYNGRP]
GO