SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[aagFA_Create_PostMassTransferDist]  @TransferEvent INT, @LastFinancialIndex INT, @COMPANYID SMALLINT, @InterID VARCHAR(20), @USERID VARCHAR(20) AS  BEGIN   Declare @TransferIndex INT,@ASSETINDEX INT,@ToAssetIndex INT,@aaFASetupID INT,  @ListID SMALLINT,@ACTINDX INT,@LatestFinancialIndex INT,@Created tinyint,@aaAliasID INT,@AcctClassID INT,@AcctType SMALLINT,@aaBrowseType SMALLINT  SET @aaAliasID=0   DECLARE CURSOR_XFREVENT CURSOR FAST_FORWARD FOR   SELECT TRANSFERINDX,ASSETINDEX FROM FA00800 WHERE TRANSFEREVENT=@TransferEvent  OPEN CURSOR_XFREVENT  FETCH NEXT FROM CURSOR_XFREVENT INTO @TransferIndex,@ASSETINDEX  WHILE @@fetch_status = 0  BEGIN  DELETE FROM AAG04001 WHERE aaFASetupID in (SELECT aaFASetupID FROM AAG04000 WHERE aaAssetIndex=(-1)*@ASSETINDEX and aaBookIndex=0)  DELETE FROM AAG04000 WHERE aaAssetIndex=(-1)*@ASSETINDEX and aaBookIndex=0  UPDATE AAG04000 SET aaAssetIndex=(-1)*@ASSETINDEX WHERE  aaAssetIndex =@ASSETINDEX and aaBookIndex=0  EXEC DYNAMICS.dbo.aagGetNextID 20000,@COMPANYID,@aaFASetupID OUT  SET @ListID=1  DECLARE CREATEDIST CURSOR FAST_FORWARD FOR  SELECT ACT FROM (SELECT TRANSFERINDX, TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX,   TONONRECGAINLOSSACCTINDX, TOCLEARACCTINDX FROM FA00800 WHERE TRANSFERINDX = @TransferIndex) p  UNPIVOT (ACT FOR ASSETI in ( TODEPREXPACCTINDX, TODEPRRESVACCTINDX, TOPRYRDEPRACCTINDX, TOASSETCOSTACCTINDX, TOPROCEEDSACCTINDX, TORECGAINLOSSACCTINDX,   TONONRECGAINLOSSACCTINDX,TOCLEARACCTINDX )) as a WHERE TRANSFERINDX = @TransferIndex  OPEN CREATEDIST  FETCH NEXT FROM CREATEDIST INTO @ACTINDX  WHILE @@fetch_status = 0  BEGIN  SELECT @aaAliasID=aaAliasID from FA00100 WHERE ASSETINDEX=@ASSETINDEX  SELECT @AcctType=ACCTTYPE FROM GL00100 WHERE ACTINDX=@ACTINDX  EXEC aagGetClassIDBrowseType @ACTINDX,@AcctClassID OUTPUT,@aaBrowseType OUTPUT  INSERT INTO AAG04000(aaFASetupID,ListID,INTERID,USERID,SERIES,ACTINDX,ACCTTYPE,aaBrowseType,aaAssetIndex,aaBookIndex,aaAliasID)   VALUES (@aaFASetupID,@ListID,@InterID,@USERID,2,@ACTINDX,@AcctType,@aaBrowseType,@ASSETINDEX,0,@aaAliasID)  IF @AcctClassID !=0  BEGIN   INSERT INTO AAG04001 (aaFASetupID, ListID,aaTrxDimID, aaTrxDimCodeID)   SELECT @aaFASetupID, @ListID,aaTrxDimID,aaTrxDimCodeID  FROM AAG04001 WHERE aaFASetupID= (SELECT TOP 1 aaFASetupID FROM AAG04000 WHERE aaAssetIndex=(-1)*@ASSETINDEX AND aaBookIndex=0) AND ListID=@ListID  AND aaTrxDimID NOT IN (SELECT l.aaTrxDimID FROM AAG04001 l WHERE l.aaFASetupID = @aaFASetupID AND l.ListID = @ListID)   END  SET @ListID=@ListID+1  FETCH NEXT FROM CREATEDIST INTO @ACTINDX  END  CLOSE CREATEDIST  DEALLOCATE CREATEDIST  FETCH NEXT FROM CURSOR_XFREVENT INTO @TransferIndex,@ASSETINDEX  END  CLOSE CURSOR_XFREVENT  DEALLOCATE CURSOR_XFREVENT  EXEC aagFA_Create_PostTransferDist2 @LastFinancialIndex,206,@COMPANYID,@InterID,@LatestFinancialIndex OUT,0 END   
GO
GRANT EXECUTE ON  [dbo].[aagFA_Create_PostMassTransferDist] TO [DYNGRP]
GO
