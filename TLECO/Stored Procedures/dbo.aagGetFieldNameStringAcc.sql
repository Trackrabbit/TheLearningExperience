SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagGetFieldNameStringAcc] ( @aaBudgetID INTEGER   , @InStrAcc CHAR(30)  , @InStrDes CHAR(30)  , @InStrPer CHAR(30)  , @InStrOpBal CHAR(30)  , @RetString VARCHAR(8000) OUTPUT ,  @RetString_A VARCHAR(8000) OUTPUT ,  @RetString1 VARCHAR(8000) OUTPUT, @RetString1_A VARCHAR(8000) OUTPUT ) AS  BEGIN SET NOCOUNT ON DECLARE @aaTrxString VARCHAR(7600) DECLARE @PeriodString VARCHAR(7600) DECLARE @aaBudgetTreeID INTEGER DECLARE @nCount INTEGER DECLARE @aaTrxDim VARCHAR(250)  DECLARE @aaTrxDimID INTEGER DECLARE @aaTrxDimDescr VARCHAR(51) DECLARE @aaFiscalPeriod INTEGER DECLARE @FiscalYear VARCHAR(4) DECLARE @PeriodDate datetime  DECLARE @aaTempStr1 VARCHAR(51)  DECLARE @aaTempStr2 VARCHAR(51)  DECLARE @aaTempStr3 VARCHAR(51)  DECLARE @aaTempStr4 VARCHAR(51)  DECLARE @aaTempStr5 VARCHAR(7600)  DECLARE @aaTempStr6 VARCHAR(7600)  SELECT @aaTrxString = '' SELECT @PeriodString = '' SELECT @aaTempStr5 = ''  SELECT @aaTempStr6 = ''  SELECT @aaBudgetTreeID = aaBudgetTreeID  FROM AAG00903  WHERE aaBudgetID = @aaBudgetID  declare TrxDim cursor fast_forward for  SELECT A.aaTrxDimID, REPLACE(aaTrxDim,'''','''''') as aaTrxDim, REPLACE(A.aaTrxDimDescr,'''','''''') as aaTrxDimDescr  FROM AAG00400 A INNER JOIN AAG00901 B ON A.aaTrxDimID = B.aaTrxDimID  WHERE A.aaTrxDimID IN (SELECT aaTrxDimID FROM AAG00901 WHERE aaBudgetTreeID = @aaBudgetTreeID ) AND  B.aaBudgetTreeID = @aaBudgetTreeID ORDER BY B.aaOrder open TrxDim  fetch next from TrxDim into @aaTrxDimID, @aaTrxDim, @aaTrxDimDescr WHILE @@fetch_status = 0 BEGIN SET @aaTrxString = @aaTrxString + 'CONVERT(VARCHAR(51),''' + LTRIM(RTRIM(@aaTrxDimDescr)) + ''') AS ''' + LTRIM(RTRIM(@aaTrxDimDescr)) + ''',' SET @aaTempStr5 =  @aaTempStr5  + 'CONVERT(VARCHAR(51),''' + LTRIM(RTRIM('')) + ''') AS ''' + LTRIM(RTRIM(@aaTrxDimDescr)) + ''','  fetch next from TrxDim into @aaTrxDimID, @aaTrxDim, @aaTrxDimDescr END  close TrxDim deallocate TrxDim declare FiscalPeriod cursor fast_forward for SELECT PERIODDT, aaFiscalPeriod  FROM AAG00904  WHERE aaBudgetID = @aaBudgetID and  aaCodeSequence = 1  ORDER BY PERIODDT open FiscalPeriod  fetch next from FiscalPeriod into @PeriodDate, @aaFiscalPeriod WHILE @@fetch_status = 0 BEGIN SELECT @FiscalYear = SY40101.YEAR1  FROM SY40101  WHERE FSTFSCDY <= @PeriodDate AND LSTFSCDY >= @PeriodDate  IF @aaFiscalPeriod <> 0 SELECT @aaTempStr1 = 'CONVERT(VARCHAR(51),''' + ltrim(rtrim(replace(@InStrPer,'''',''''''))) + ' ' + LTRIM( RTRIM( CONVERT( VARCHAR, @aaFiscalPeriod ) ) ) + ' - ' + @FiscalYear +'''),' ELSE SELECT @aaTempStr1 = 'CONVERT(VARCHAR(51),''' + ltrim(rtrim(replace(@InStrOpBal,'''',''''''))) + '' + ' ''),'   SELECT @aaTempStr2 = 'CONVERT(VARCHAR(51),'' ' +  ' ''),' SELECT @aaTempStr3 = '''Period ' + LTRIM( RTRIM( CONVERT( VARCHAR, @aaFiscalPeriod ) ) ) + ' - ' + @FiscalYear + ' Amount '',' SELECT @aaTempStr4 = '''Period ' + LTRIM( RTRIM( CONVERT( VARCHAR, @aaFiscalPeriod ) ) ) + ' - ' + @FiscalYear + ' Quantity'',' SET @PeriodString = @PeriodString + LEFT(@aaTempStr1,LEN(@aaTempStr1)-1) + ' AS ' +  @aaTempStr3 + LEFT(@aaTempStr2,LEN(@aaTempStr2)-1) + ' AS ' +  @aaTempStr4 SET @aaTempStr6 = @aaTempStr6 + '''Amount'' AS ' +  @aaTempStr3 + '''Quantity'' AS' +  @aaTempStr4  fetch next from FiscalPeriod into @PeriodDate, @aaFiscalPeriod END  close FiscalPeriod deallocate FiscalPeriod  SELECT @RetString = 'SELECT CONVERT(INTEGER,''1'') AS ''RowID'',  CONVERT(INTEGER,''-1'') AS ''aaCodeSequence'',CONVERT(VARCHAR(51),  ''Budget Tree ID'') AS ''Budget Tree ID'',' +  @aaTrxString   SELECT @RetString_A =  'CONVERT(VARCHAR(51),''' + replace(@InStrAcc,'''','''''') + ''')AS ''' + replace(@InStrAcc,'''','''''') + ''', CONVERT(VARCHAR(51)  ,''' + replace(@InStrDes,'''','''''') + ''') AS ''' + replace(@InStrDes,'''','''''') + ''',' + @PeriodString  + 'CONVERT(VARCHAR(51),''Total'')AS ''Total Amount'',  CONVERT(VARCHAR(51),'''') AS ''Total Quantity'''   SELECT @RetString1= 'SELECT CONVERT(INTEGER,''2'') AS ''RowID''  ,0 AS ''aaCodeSequence'',CONVERT(VARCHAR(51),'''') AS ''Budget Tree ID''  ,' +  @aaTempStr5   SELECT @RetString1_A =  'CONVERT(VARCHAR(51),'''')AS ''Account''  , CONVERT(VARCHAR(51),'''') AS ''Description'',' + @aaTempStr6  + 'CONVERT(VARCHAR(51),''Amount'')AS ''Total Amount''  , CONVERT(VARCHAR(51),''Quantity'') AS ''Total Quantity''' SET NOCOUNT OFF RETURN  1 END    
GO
GRANT EXECUTE ON  [dbo].[aagGetFieldNameStringAcc] TO [DYNGRP]
GO