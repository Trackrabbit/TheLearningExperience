SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagMLStep1]  @iStoredProcIdx smallint = 0,   @iLvlTable varchar(64) = '',  @iColTable varchar(64) = '',  @iDebug tinyint = 0,   @oStatus  smallint = 0 out as  set nocount on set dateformat ymd  if @iDebug = 1  begin  print ''  print '************************'  print '** aagMLStep1 started **'  print '************************'  print '' end  declare @retCode int,  @levels smallint,  @execCmd  nvarchar(4000)  if (@iLvlTable = '') or (@iColTable = '') begin select @oStatus = -1 return end  select  @retCode   = 0,  @oStatus   = 0,  @levels  = 0,  @execCmd   = N''  exec @retCode = aagMLDropTables @iDebug if (@retCode <> 0) return @retCode  select * into ##Options from AAG00315 where USERID = SYSTEM_USER  select @execCmd =  N'select * into ##Lvl  from ' + @iLvlTable + ' select * into ##Col  from ' + @iColTable   if dbo.aagMLCancelled() = 1 goto DONE  if @iDebug = 1 print @execCmd exec @retCode = sp_executesql @execCmd if (@retCode <> 0) return @retCode  select @execCmd = 'CREATE CLUSTERED INDEX  aaColumn_tCol' select @execCmd =  @execCmd + ' ON ##Col(aaColumn)' if @iDebug = 1 print @execCmd if dbo.aagMLCancelled() = 1 goto DONE exec @retCode = sp_executesql @execCmd if (@retCode <> 0) return @retCode  select @levels = count(*) from ##Lvl if (@levels = 0) begin select @oStatus = -60 return end  DONE:  if @iDebug = 1   begin  print ''  print '*************************'  print '** aagMLStep1 finished **'  print '*************************'  print ''  end   set nocount off  return 0    
GO
GRANT EXECUTE ON  [dbo].[aagMLStep1] TO [DYNGRP]
GO