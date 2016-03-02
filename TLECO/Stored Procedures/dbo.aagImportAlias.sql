SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagImportAlias]  @I_AliasTableTemp NVARCHAR(30) = null,   @I_UserID NVARCHAR(10),  @I_AliasLogTableTemp NVARCHAR(30) = null,  @O_SQL_ERROR_STATE INT   = NULL OUTPUT,  @I_Alias NVARCHAR(30),   @I_TrxDim NVARCHAR(30),   @I_TrxDimCode NVARCHAR(30)  AS  BEGIN  DECLARE @Alias VARCHAR(100)   DECLARE @aaTrxDim  VARCHAR(50)   DECLARE @aaTrxDimCode  VARCHAR(50)    DECLARE @nAliasID  INT     DECLARE @nPrevAlias  VARCHAR(100)    DECLARE @RelTrxDim  CHAR(15)     DECLARE @RelTrxDimCode  CHAR(30)     DECLARE @naaDataType  INT     DECLARE @fValidCodeComb TINYINT     DECLARE @MaxAliasID  INT     DECLARE @MODIFDT  DATETIME    DECLARE @ErrorNum  INT     DECLARE @ErrAliasID  INT      DECLARE @TempTable VARCHAR(50),  @TempTableQuery VARCHAR(8000),  @TempTableTemp VARCHAR(50)   select @TempTable = '##TEMP_ALIAS_FORSP1'  + REPLACE(system_user,'''','') + db_name()   select @TempTableTemp = '[' + @TempTable + ']'  select @TempTableQuery = 'DROP TABLE ' + @TempTable    SELECT @MODIFDT = CONVERT(CHAR(12),GETDATE(),111)   SET @RelTrxDim = ''   SET @RelTrxDimCode = ''  SET @ErrorNum = 0   EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' ADD AliasID INTEGER')  EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' ADD aaTrxDimID INTEGER')  EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' ADD aaTrxDimCodeID INTEGER')  EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' ADD aaDataType INTEGER')   EXEC ('delete from ' + @I_AliasLogTableTemp )    IF EXISTS (SELECT * FROM tempdb.dbo.sysobjects WHERE [name]  = @TempTable )   EXEC (@TempTableQuery)  EXEC ( 'SELECT * INTO ' + @TempTableTemp + ' from ' + @I_AliasTableTemp + ' WHERE 1 <> 1')   EXEC ('DECLARE CurTempTableforAlias CURSOR FAST_FORWARD FOR  SELECT ['+ @I_Alias + '], [' + @I_TrxDim + '], [' + @I_TrxDimCode + '] from ' + @I_AliasTableTemp + ' ORDER BY RowInc')   OPEN CurTempTableforAlias   FETCH NEXT FROM CurTempTableforAlias INTO @Alias, @aaTrxDim, @aaTrxDimCode  SET @nAliasID = 0  SET @nPrevAlias = ''  WHILE @@FETCH_STATUS = 0   BEGIN  IF @nPrevAlias <> @Alias   BEGIN   SET @nAliasID = @nAliasID + 1  SET @nPrevAlias = @Alias  EXEC ('UPDATE ' + @I_AliasTableTemp + ' SET AliasID = ' + @nAliasID + ' WHERE ['+ @I_Alias + '] = ''' + @Alias + ''' ')  END  FETCH NEXT FROM CurTempTableforAlias INTO @Alias, @aaTrxDim, @aaTrxDimCode  END  CLOSE CurTempTableforAlias   DEALLOCATE CurTempTableforAlias    EXEC ('UPDATE ' + @I_AliasTableTemp + ' SET aaTrxDimID = AAG00400.aaTrxDimID, aaDataType = AAG00400.aaDataType FROM AAG00400 WHERE LTRIM(RTRIM(' + @I_AliasTableTemp + '.[' + @I_TrxDim + '])) = LTRIM(RTRIM(AAG00400.aaTrxDim))')  EXEC ('UPDATE ' + @I_AliasTableTemp + ' SET aaTrxDimCodeID = AAG00401.aaTrxDimCodeID FROM AAG00401 WHERE LTRIM(RTRIM(' + @I_AliasTableTemp + '.[' + @I_TrxDimCode + '])) = LTRIM(RTRIM(AAG00401.aaTrxDimCode))')  SET @aaTrxDimCode = ''    EXEC ('DECLARE CurTempTableforAlias CURSOR FAST_FORWARD FOR  SELECT DISTINCT AliasID, ['+ @I_Alias + '] FROM ' + @I_AliasTableTemp + '  WHERE AliasID IN (SELECT AliasID FROM ' + @I_AliasTableTemp + ' WHERE aaTrxDimID IS NULL)  OR AliasID IN(SELECT AliasID FROM ' + @I_AliasTableTemp + '  WHERE [' + @I_TrxDimCode + '] <> ''' + @aaTrxDimCode + ''' AND aaTrxDimCodeID IS NULL) OR AliasID IN(SELECT AliasID FROM ' + @I_AliasTableTemp + ' A   INNER JOIN AAG00400 ON A.aaTrxDimID = AAG00400.aaTrxDimID  LEFT OUTER JOIN AAG00401 ON A.aaTrxDimCodeID = AAG00401.aaTrxDimCodeID  WHERE AAG00400.INACTIVE <> 0 OR AAG00401.INACTIVE <> 0) ORDER BY AliasID')   OPEN CurTempTableforAlias   FETCH NEXT FROM CurTempTableforAlias INTO @nAliasID, @Alias  WHILE @@FETCH_STATUS = 0  BEGIN  SET @ErrAliasID = 0   EXEC ('DECLARE curErrNum CURSOR FAST_FORWARD FOR SELECT DISTINCT AliasID FROM ' + @I_AliasTableTemp + ' WHERE AliasID IN(SELECT AliasID   FROM ' + @I_AliasTableTemp + ' WHERE aaTrxDimID IS NULL) AND AliasID = ' + @nAliasID + '')   OPEN curErrNum   FETCH NEXT FROM curErrNum INTO @ErrAliasID  WHILE @@FETCH_STATUS = 0  BEGIN   FETCH NEXT FROM curErrNum INTO @ErrAliasID  end   CLOSE curErrNum   DEALLOCATE curErrNum   IF @ErrAliasID <> 0  BEGIN  SET @ErrorNum = 3  END   IF @ErrorNum = 0   BEGIN  EXEC ('DECLARE curErrNum CURSOR FAST_FORWARD FOR SELECT DISTINCT AliasID FROM ' + @I_AliasTableTemp + ' WHERE AliasID IN(SELECT AliasID   FROM ' + @I_AliasTableTemp + ' WHERE [' + @I_TrxDim + '] <> ''' + @aaTrxDimCode + ''' AND aaTrxDimCodeID IS NULL) AND AliasID = ' + @nAliasID + '')   OPEN curErrNum   FETCH NEXT FROM curErrNum INTO @ErrAliasID  WHILE @@FETCH_STATUS = 0   BEGIN   FETCH NEXT FROM curErrNum INTO @ErrAliasID  END   CLOSE curErrNum   DEALLOCATE curErrNum   IF @ErrAliasID <> 0  BEGIN  SET @ErrorNum = 4  END   END  IF @ErrorNum = 0   BEGIN  EXEC ('DECLARE curErrNum CURSOR FAST_FORWARD FOR SELECT DISTINCT AliasID FROM ' + @I_AliasTableTemp + ' WHERE AliasID IN(SELECT AliasID FROM ' + @I_AliasTableTemp + ' A   INNER JOIN AAG00400 ON A.aaTrxDimID = AAG00400.aaTrxDimID  INNER JOIN AAG00401 ON A.aaTrxDimCodeID = AAG00401.aaTrxDimCodeID  WHERE AAG00400.INACTIVE <> 0 OR AAG00401.INACTIVE <> 0) AND AliasID = ' + @nAliasID + '')   OPEN curErrNum   FETCH NEXT FROM curErrNum INTO @ErrAliasID  WHILE @@FETCH_STATUS = 0  BEGIN   FETCH NEXT FROM curErrNum INTO @ErrAliasID  END   CLOSE curErrNum   DEALLOCATE curErrNum   IF @ErrAliasID <> 0  BEGIN  SET @ErrorNum = 8   END   END  EXEC ('INSERT INTO ' + @I_AliasLogTableTemp +'(aaAlias, aaErrorNum)  SELECT DISTINCT ['+ @I_Alias + '], ' + @ErrorNum + ' FROM ' + @I_AliasTableTemp + ' WHERE AliasID = ' + @nAliasID + ' ORDER BY ['+ @I_Alias + '] ')  SET @ErrorNum = 0  FETCH NEXT FROM CurTempTableforAlias INTO @nAliasID, @Alias  END  CLOSE CurTempTableforAlias   DEALLOCATE CurTempTableforAlias    SET @aaTrxDimCode = ''    EXEC ('DECLARE CurTempTableforAlias CURSOR FAST_FORWARD FOR  SELECT DISTINCT AliasID, ['+ @I_Alias + '] FROM ' + @I_AliasTableTemp + '  WHERE AliasID NOT IN (SELECT AliasID FROM ' + @I_AliasTableTemp + ' WHERE aaTrxDimID IS NULL)  AND AliasID NOT IN(SELECT AliasID FROM ' + @I_AliasTableTemp + '  WHERE [' + @I_TrxDimCode + '] <> ''' + @aaTrxDimCode + ''' AND aaTrxDimCodeID IS NULL) AND AliasID NOT IN(SELECT AliasID FROM ' + @I_AliasTableTemp + ' A   INNER JOIN AAG00400 ON A.aaTrxDimID = AAG00400.aaTrxDimID  LEFT OUTER JOIN AAG00401 ON A.aaTrxDimCodeID = AAG00401.aaTrxDimCodeID  WHERE AAG00400.INACTIVE <> 0 OR AAG00401.INACTIVE <> 0) ORDER BY AliasID')    OPEN CurTempTableforAlias   FETCH NEXT FROM CurTempTableforAlias INTO @nAliasID, @Alias  WHILE @@FETCH_STATUS = 0   BEGIN  IF NOT EXISTS(SELECT aaAlias FROM AAG00800 WHERE UPPER(aaAlias) = UPPER(@Alias))  BEGIN  exec ('TRUNCATE TABLE  ' + @TempTableTemp )    EXEC ('INSERT INTO ' + @TempTableTemp + '(['+ @I_Alias + '], Description, SDescription, [' + @I_TrxDim + '], [' + @I_TrxDimCode + '], AliasID, aaTrxDimID, aaTrxDimCodeID, aaDataType)  SELECT ['+ @I_Alias + '], Description, SDescription, [' + @I_TrxDim + '], [' + @I_TrxDimCode + '], AliasID, aaTrxDimID, aaTrxDimCodeID, aaDataType  FROM ' + @I_AliasTableTemp + ' WHERE AliasID = ' + @nAliasID + ' ORDER BY RowInc')  EXEC aagValidateCodeCombAlias @TempTableTemp,  @aaTrxDim,  @aaTrxDimCode,  @RelTrxDim,  @RelTrxDimCode,  @fValidCodeComb output  SET @ErrorNum = 5   IF @fValidCodeComb = 1   BEGIN  EXEC aagValidateCodeCombAliasImport @TempTableTemp,   @fValidCodeComb OUTPUT, @ErrorNum OUTPUT  END   IF @fValidCodeComb = 1   BEGIN   SELECT @MaxAliasID = ISNULL(MAX(aaAliasID) + 1,1) FROM AAG00800  EXEC ('INSERT INTO AAG00800(aaAliasID, aaAlias, aaDescription, aaShortDescription, aaInactive, MODIFDT, MDFUSRID)  SELECT TOP 1 ' + @MaxAliasID + ',UPPER(['+ @I_Alias + ']), UPPER(Description), UPPER(SDescription), 0, ''' + @MODIFDT + ''',''' + @I_UserID + '''  FROM ' + @TempTableTemp + ' ORDER BY RowInc')    EXEC ('INSERT INTO AAG00801(aaAliasID, aaTrxDimID, aaTrxDimCodeID)   SELECT ' + @MaxAliasID + ',aaTrxDimID, aaTrxDimCodeID FROM ' + @TempTableTemp )   END   ELSE  BEGIN      EXEC ('INSERT INTO ' + @I_AliasLogTableTemp + '(aaAlias, aaErrorNum)  SELECT DISTINCT ['+ @I_Alias + '], ' + @ErrorNum + ' FROM ' + @TempTableTemp + ' ORDER BY ['+ @I_Alias + ']')   SET @ErrorNum = 0   END   END   ELSE  BEGIN  SET @ErrorNum = 2  EXEC ('INSERT INTO ' + @I_AliasLogTableTemp +'(aaAlias, aaErrorNum)  SELECT DISTINCT ['+ @I_Alias + '], ' + @ErrorNum + ' FROM ' + @I_AliasTableTemp + ' WHERE AliasID = ' + @nAliasID + ' ORDER BY ['+ @I_Alias + '] ')  SET @ErrorNum = 0  END  FETCH NEXT FROM CurTempTableforAlias INTO @nAliasID, @Alias  END  CLOSE CurTempTableforAlias   DEALLOCATE CurTempTableforAlias    EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' DROP COLUMN AliasID ')  EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' DROP COLUMN aaTrxDimID ')  EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' DROP COLUMN aaTrxDimCodeID ')  EXEC ('ALTER TABLE ' + @I_AliasTableTemp + ' DROP COLUMN aaDataType ')    EXEC ('if not exists(Select 1 from ' + @I_AliasLogTableTemp + ') INSERT INTO ' + @I_AliasLogTableTemp + '(aaAlias, aaErrorNum)  SELECT DISTINCT ['+ @I_Alias + '], 0 FROM ' + @TempTableTemp + ' ORDER BY ['+ @I_Alias + ']')  END    
GO
GRANT EXECUTE ON  [dbo].[aagImportAlias] TO [DYNGRP]
GO
