SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagMLStep2]  @iStoredProcIdx  smallint = 0,   @iTimeSprTable  varchar(64) = '',  @iCodeSprTable  varchar(64) = '',  @iDebug   tinyint = 0,   @oStatus   smallint = 0 out as  set nocount on set dateformat ymd  if @iDebug = 1  begin  print ''  print '************************'  print '** aagMLStep2 started **'  print '************************'  print '' end  declare @retCode int,  @execCmd  nvarchar(4000),  @per smallint,  @toPer smallint,  @year smallint,  @codeSprCol smallint,  @rowID int,  @cmd nvarchar(2000),   @p char(1)  if (@iTimeSprTable = '') or (@iCodeSprTable = '') begin select @oStatus = -1 return end  select  @retCode   = 0,  @oStatus   = 0,  @execCmd   = N'',  @per   = 0,  @toPer  = 0,  @year  = 0,  @codeSprCol = 0,  @rowID   = 0,  @cmd  = N'',  @p  = ''''  select @execCmd =  N' delete from ' + @iTimeSprTable +  ' delete from ' + @iCodeSprTable  if @iDebug = 1 print @execCmd exec @retCode = sp_executesql @execCmd if (@retCode <> 0) return @retCode  if dbo.aagMLCancelled() = 1 goto DONE  if (select aaTimeSpreadUsed from ##Options) = 1  begin  if @iDebug = 1 print '** Time Spread used **'  select @per = From_Period, @toPer = To_Period, @year = YEAR1 from ##Options   while @per <= @toPer and dbo.aagMLCancelled() = 0  begin  select @rowID = @rowID + 1   select @execCmd =   N'insert ' + @iTimeSprTable + '(aaRowID, COLUMNAM, aaBasePeriod)' +   ' select ' + convert(varchar(3), @rowID) +   ',' + @p + convert(varchar(3), @per) + '/' + convert(varchar(4), @year) + @p +  ',' + convert(varchar(3), @per)   if @iDebug = 1 print @execCmd  exec @retCode = sp_executesql @execCmd  if (@retCode <> 0) return @retCode   select @per = @per +1  end end  if dbo.aagMLCancelled() = 1 goto DONE  if (select aaCodeSpreadUsed from ##Options) = 1  begin  if @iDebug = 1 print '** Code Spread used **'  if exists(select name from tempdb..sysobjects where name = '#Code' and type = 'U')  drop table #Code   if dbo.aagMLCancelled() = 1 goto DONE   create table #Code(  aaRowID int not null identity,  COLUMNAM varchar(98) not null,  aaCodeID varchar(50) not null)   select @codeSprCol = aaCodeSpreadCol from ##Options   select @cmd = convert(nvarchar(2000), aaSQLCodeCmd) from ##Col where aaColumn = @codeSprCol   if dbo.aagMLCancelled() = 1 goto DONE   if (select aaInclEmptyCodes from ##Col where aaColumn = @codeSprCol) = 1   begin  if @iDebug = 1 print '** empty code added **'   insert #Code(COLUMNAM, aaCodeID) select aaEmptyCodeStr, '0' from ##Options  end   if dbo.aagMLCancelled() = 1 goto DONE   select @execCmd =  N'insert #Code(COLUMNAM, aaCodeID)' + @cmd   if @iDebug = 1 print @execCmd  exec @retCode = sp_executesql @execCmd  if (@retCode <> 0) return @retCode   if dbo.aagMLCancelled() = 1 goto DONE   select @execCmd =   N'insert ' + @iCodeSprTable + '(aaRowID, COLUMNAM, aaCodeID)' +  ' select aaRowID, COLUMNAM, aaCodeID from #Code'    if @iDebug = 1 print @execCmd  exec @retCode = sp_executesql @execCmd  if (@retCode <> 0) return @retCode   drop table #Code end  DONE:  if @iDebug = 1   begin  print ''  print '*************************'  print '** aagMLStep2 finished **'  print '*************************'  print ''  end   set nocount off  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagMLStep2] TO [DYNGRP]
GO
