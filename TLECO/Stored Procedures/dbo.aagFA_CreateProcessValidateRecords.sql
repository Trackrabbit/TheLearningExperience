SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[aagFA_CreateProcessValidateRecords] @AssetIndex INT, @bMassProcess TINYINT, @aAssetGroupName VARCHAR(15), @DocType SMALLINT, @UserID  VARCHAR(15), @COMPANYID SMALLINT  AS BEGIN  DECLARE @BookIndex INT,@aaFASetupID INT,@aaAliasID INT IF @bMassProcess = 1  BEGIN  DECLARE CURSOR1 CURSOR FAST_FORWARD FOR  SELECT A.ASSETINDEX,B.BOOKINDX FROM FA10200 A  INNER JOIN FA00200 B ON A.ASSETINDEX=B.ASSETINDEX WHERE A.GROUPNAME=@aAssetGroupName and A.USERID=@UserID  AND B.BOOKINDX IN(SELECT BOOKINDX FROM FA40200 WHERE PTGENLED=1) END ELSE BEGIN  DECLARE CURSOR1 CURSOR FAST_FORWARD FOR  SELECT ASSETINDEX,BOOKINDX FROM FA00200 WHERE ASSETINDEX=@AssetIndex AND BOOKINDX IN(SELECT BOOKINDX FROM FA40200 WHERE PTGENLED=1)  END  DELETE FROM FA00904 WHERE FA_Doc_Number = CONVERT(VARCHAR(16),@DocType)   OPEN CURSOR1 FETCH NEXT FROM CURSOR1 INTO @AssetIndex,@BookIndex WHILE @@fetch_status = 0 BEGIN  IF (SELECT count(*) FROM AAG04000 WHERE aaAssetIndex=@AssetIndex and aaBookIndex=0)=0   BEGIN  exec aagFACreateSetupInfo @AssetIndex,0,0,@COMPANYID,@UserID,@aaFASetupID OUT  END  IF (SELECT count(*) FROM AAG04000 WHERE aaAssetIndex=@AssetIndex and aaBookIndex=@BookIndex)=0   BEGIN  SELECT @aaAliasID=aaAliasID FROM FA00100 WHERE ASSETINDEX=@AssetIndex  exec aagFACreateSetupInfo @AssetIndex,@BookIndex,@aaAliasID,@COMPANYID,@UserID,@aaFASetupID OUT  END  SELECT TOP 1 @aaFASetupID=aaFASetupID FROM AAG04000 WHERE aaAssetIndex=@AssetIndex and aaBookIndex=@BookIndex  INSERT INTO FA00904(FINANCIALINDX,ASSETINDEX,BOOKINDX,FA_Doc_Number) VALUES (@aaFASetupID,@AssetIndex,@BookIndex,CONVERT(VARCHAR(16),@DocType))   FETCH NEXT FROM CURSOR1 INTO @AssetIndex,@BookIndex END CLOSE CURSOR1 DEALLOCATE CURSOR1  END   
GO
GRANT EXECUTE ON  [dbo].[aagFA_CreateProcessValidateRecords] TO [DYNGRP]
GO