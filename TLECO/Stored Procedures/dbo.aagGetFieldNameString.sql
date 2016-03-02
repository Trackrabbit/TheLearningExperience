SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagGetFieldNameString] ( @aaBudgetID INTEGER   , @InStrOpBal CHAR(30)  , @InStrPer CHAR(30)  , @RetString VARCHAR(8000) OUTPUT , @RetString1 VARCHAR(8000) OUTPUT  ) AS  BEGIN SET NOCOUNT ON DECLARE @aaTrxString VARCHAR(8000) DECLARE @PeriodString VARCHAR(8000) DECLARE @aaBudgetTreeID INTEGER DECLARE @aaTrxDimDescr VARCHAR(8000) DECLARE @aaTrxDimID INTEGER DECLARE @aaOrder  INTEGER DECLARE @aaFiscalPeriod INTEGER DECLARE @PeriodDate datetime DECLARE @FiscalYear INT DECLARE @aaTempStr1 VARCHAR(8000) DECLARE @aaTempStr2 VARCHAR(8000) DECLARE @aaTempStr3 VARCHAR(8000) DECLARE @aaTempStr4 VARCHAR(8000) DECLARE @aaTempStr5 VARCHAR(8000)  DECLARE @aaTempStr6 VARCHAR(8000)   SELECT @aaTrxString = '' SELECT @PeriodString = '' SELECT @aaTempStr5 = ''  SELECT @aaTempStr6 = ''  SELECT @aaBudgetTreeID = aaBudgetTreeID FROM AAG00903 WHERE aaBudgetID  =@aaBudgetID   declare TrxDim Cursor fast_forward for  SELECT A.aaTrxDimID, REPLACE(A.aaTrxDimDescr,'''','''''') as aaTrxDimDescr  FROM AAG00400 A INNER JOIN AAG00901 B ON A.aaTrxDimID = B.aaTrxDimID  WHERE A.aaTrxDimID IN  (SELECT aaTrxDimID FROM AAG00901 WHERE aaBudgetTreeID = @aaBudgetTreeID ) AND  B.aaBudgetTreeID = @aaBudgetTreeID ORDER BY B.aaOrder open TrxDim fetch next from TrxDim into @aaTrxDimID, @aaTrxDimDescr WHILE @@fetch_status = 0 BEGIN SET @aaTrxString = @aaTrxString  + 'CONVERT(VARCHAR(51),'''  + LTRIM(RTRIM(@aaTrxDimDescr)) + ''') AS '''  + LTRIM(RTRIM(@aaTrxDimDescr)) + ''','  SET @aaTempStr5 =  @aaTempStr5  + 'CONVERT(VARCHAR(51),''' + LTRIM(RTRIM('')) + ''') AS '''  + LTRIM(RTRIM(@aaTrxDimDescr)) + ''','  fetch next from TrxDim into @aaTrxDimID, @aaTrxDimDescr END  close TrxDim deallocate TrxDim  declare FiscalPeriod cursor fast_forward for  SELECT PERIODDT, aaFiscalPeriod  FROM AAG00904  WHERE aaBudgetID = @aaBudgetID and  aaCodeSequence = 1 ORDER BY PERIODDT open FiscalPeriod  fetch next from FiscalPeriod into @PeriodDate, @aaFiscalPeriod WHILE @@fetch_status = 0 BEGIN SELECT @FiscalYear = SY40100.YEAR1 FROM SY40100 WHERE FORIGIN = 1 AND PERIODDT = @PeriodDate  IF @aaFiscalPeriod <> 0  SELECT @aaTempStr1 = 'CONVERT(VARCHAR(51),'''  + ltrim(rtrim(replace(@InStrPer,'''',''''''))) + ' '  + LTRIM( RTRIM( CONVERT( VARCHAR, @aaFiscalPeriod ) ) )  + ' - ' +  CONVERT(VARCHAR, @FiscalYear) + ' ''),' ELSE SELECT @aaTempStr1 = 'CONVERT(VARCHAR(51),'''  + ltrim(rtrim(replace(@InStrOpBal,'''',''''''))) + '' + ' ''),'   SELECT @aaTempStr2 = 'CONVERT(VARCHAR(51),'' ' +  ' ''),' SELECT @aaTempStr3 = '''Period '  + LTRIM( RTRIM( CONVERT( VARCHAR, @aaFiscalPeriod ) ) ) + ' - ' +  CONVERT(VARCHAR, @FiscalYear) + ' Amount '','  SELECT @aaTempStr4 = '''Period '  + LTRIM( RTRIM( CONVERT( VARCHAR, @aaFiscalPeriod ) ) ) + ' - ' +  CONVERT(VARCHAR, @FiscalYear) + ' Quantity'','  SET @PeriodString = @PeriodString  + LEFT(@aaTempStr1,LEN(@aaTempStr1)-1) + ' AS ' +  @aaTempStr3 + LEFT(@aaTempStr2,LEN(@aaTempStr2)-1) + ' AS ' +  @aaTempStr4  SET @aaTempStr6 = @aaTempStr6  + '''Amount'' AS ' +  @aaTempStr3  + '''Quantity'' AS' +  @aaTempStr4  fetch next from FiscalPeriod into @PeriodDate, @aaFiscalPeriod END  close FiscalPeriod deallocate FiscalPeriod  SELECT @RetString = 'SELECT CONVERT(INTEGER,''1'') AS ''RowID'', CONVERT(INTEGER,''-1'') AS ''aaCodeSequence'', CONVERT(VARCHAR(51),''Budget Tree ID'') AS ''Budget Tree ID'','  +  @aaTrxString + @PeriodString + 'CONVERT(VARCHAR(51),''Total'')AS ''Total Amount'',  CONVERT(VARCHAR(51),'''') AS ''Total Quantity'''  SELECT @RetString1= 'SELECT CONVERT(INTEGER,''2'') AS ''RowID'', 0 AS ''aaCodeSequence'', CONVERT(VARCHAR(51),'''') AS ''Budget Tree ID'','  +  @aaTempStr5 + @aaTempStr6 + 'CONVERT(VARCHAR(51),''Amount'')AS ''Total Amount'',  CONVERT(VARCHAR(51),''Quantity'') AS ''Total Quantity'''  SET NOCOUNT OFF RETURN  1 END    
GO
GRANT EXECUTE ON  [dbo].[aagGetFieldNameString] TO [DYNGRP]
GO