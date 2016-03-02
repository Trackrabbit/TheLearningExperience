SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE     PROCEDURE [dbo].[aagBackupRestoreBudget] (  @aaOperation INTEGER  ,  @aaBudgetID INTEGER  ,   @aaCodeSequence INTEGER  ,  @ACTINDX INTEGER  ,  @OnlyOneAcc INTEGER  ,  @table_nameBud VARCHAR(51) ,  @table_nameAcc VARCHAR(51)  ) AS BEGIN  DECLARE @ExecString VARCHAR(6000)   IF @aaOperation = 1   BEGIN  IF @OnlyOneAcc = 0  BEGIN   SET @ExecString = 'DELETE FROM ' +  @table_nameBud + ' DELETE FROM ' +  @table_nameAcc  EXEC ( @ExecString )   SET @ExecString = 'INSERT  INTO ' + @table_nameBud + ' SELECT aaBudgetID,aaCodeSequence, PERIODDT, aaFiscalPeriod,  aaActualPriliminary,Balance,QUANTITY FROM AAG00904 WHERE aaBudgetID =' + LTRIM( RTRIM( CONVERT( VARCHAR, @aaBudgetID ) ) )  EXEC ( @ExecString )   SET @ExecString = 'INSERT  INTO ' + @table_nameAcc  + ' SELECT aaBudgetID,aaCodeSequence,ACTINDX, PERIODDT, aaFiscalPeriod,aaActualPriliminary  ,aaRange,Balance FROM AAG00905 WHERE aaBudgetID ='  + LTRIM( RTRIM( CONVERT( VARCHAR, @aaBudgetID ) ) )  EXEC ( @ExecString )   END  ELSE   BEGIN  SET @ExecString = 'DELETE FROM ' +  @table_nameAcc   EXEC ( @ExecString )   SET @ExecString = 'INSERT  INTO ' + @table_nameAcc  + ' SELECT aaBudgetID,aaCodeSequence,ACTINDX, PERIODDT, aaFiscalPeriod,aaActualPriliminary  ,aaRange,Balance FROM AAG00905 WHERE aaBudgetID ='  + LTRIM( RTRIM( CONVERT( VARCHAR, @aaBudgetID ) ) ) +   ' AND aaCodeSequence='  + LTRIM( RTRIM( CONVERT( VARCHAR, @aaCodeSequence ) ) ) +   ' AND ACTINDX = '  + LTRIM( RTRIM( CONVERT( VARCHAR, @ACTINDX ) ) )   EXEC ( @ExecString )  END  END  ELSE   BEGIN  IF @OnlyOneAcc = 0  BEGIN  DELETE FROM AAG00904 WHERE aaBudgetID = @aaBudgetID   SET @ExecString = 'INSERT INTO AAG00904 SELECT aaBudgetID,aaCodeSequence  ,PERIODDT, aaFiscalPeriod,aaActualPriliminary,Balance,QUANTITY,CASE WHEN (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=A.PERIODDT) IS NULL AND aaFiscalPeriod = 0 THEN (SELECT DATEPART(yy, A.PERIODDT) +1) ELSE (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=A.PERIODDT) END, getutcdate() FROM '  + @table_nameBud + ' A WHERE aaBudgetID = ' + LTRIM(RTRIM(CONVERT(VARCHAR, @aaBudgetID) ) )  EXEC ( @ExecString )   DELETE FROM AAG00905 WHERE aaBudgetID = @aaBudgetID   SET @ExecString = 'INSERT INTO AAG00905 SELECT aaBudgetID,aaCodeSequence,ACTINDX, PERIODDT, aaFiscalPeriod,  aaActualPriliminary,aaRange,Balance,CASE WHEN (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=' + @table_nameAcc + '.PERIODDT) IS NULL AND aaFiscalPeriod = 0 THEN (SELECT DATEPART(yy, ' + @table_nameAcc + '.PERIODDT) +1) ELSE (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=ISNULL((SELECT  top 1 DATE1 from AAG00500 WHERE DATE1 =' + @table_nameAcc + '.PERIODDT),DATEADD(MONTH, 1, ' + @table_nameAcc + '.PERIODDT))) END FROM ' + @table_nameAcc + ' WHERE aaBudgetID = '  + LTRIM(RTRIM(CONVERT(VARCHAR, @aaBudgetID) ) )  EXEC ( @ExecString )  END  ELSE  BEGIN  DELETE FROM AAG00905 WHERE aaBudgetID = @aaBudgetID AND ACTINDX = @ACTINDX AND aaCodeSequence = @aaCodeSequence   SET @ExecString = 'INSERT INTO AAG00905 SELECT aaBudgetID,aaCodeSequence,ACTINDX, PERIODDT, aaFiscalPeriod,  aaActualPriliminary,aaRange,Balance,CASE WHEN (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=' + @table_nameAcc + '.PERIODDT) IS NULL AND aaFiscalPeriod = 0 THEN (SELECT DATEPART(yy, ' + @table_nameAcc + '.PERIODDT) +1) ELSE (SELECT TOP 1 aaFiscalYear FROM AAG00500 WHERE AAG00500.DATE1=ISNULL((SELECT  top 1 DATE1 from AAG00500 WHERE DATE1 =' + @table_nameAcc + '.PERIODDT),DATEADD(MONTH, 1, ' + @table_nameAcc + '.PERIODDT))) END FROM ' + @table_nameAcc + ' WHERE aaBudgetID = '  + LTRIM(RTRIM(CONVERT(VARCHAR, @aaBudgetID) ) )   + ' AND ACTINDX = ' + LTRIM( RTRIM (CONVERT (VARCHAR, @ACTINDX ) ) ) +   + ' AND aaCodeSequence = ' + LTRIM( RTRIM (CONVERT (VARCHAR, @aaCodeSequence ) ) )  EXEC ( @ExecString )  END  END END    
GO
GRANT EXECUTE ON  [dbo].[aagBackupRestoreBudget] TO [DYNGRP]
GO
