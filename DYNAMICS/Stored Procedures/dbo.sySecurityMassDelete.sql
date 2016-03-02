SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[sySecurityMassDelete]  @I_iRecordType int    = NULL,  @I_tRemoveRecords tinyint   = NULL,  @I_cStartRange char(25)  = NULL,  @I_cEndRange char(25)  = NULL,  @I_cTempTableName char(255)  = NULL,  @O_SQL_Error_State int    = NULL   output as   declare   @InsertStmt varchar(2000),  @TRUE int,  @FALSE int,  @iStatus int,  @iError int  select @O_SQL_Error_State = 0  if (  @I_iRecordType is NULL or  @I_tRemoveRecords is NULL or  @I_cStartRange is NULL or  @I_cEndRange is NULL or  @I_cTempTableName is NULL)  begin  select          @O_SQL_Error_State = 20857  return end  exec @iStatus = DYNAMICS..smGetConstantInt 'TRUE', @TRUE output, @O_SQL_Error_State output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  exec @iStatus = DYNAMICS..smGetConstantInt 'FALSE', @FALSE output, @O_SQL_Error_State output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError if ( (@iStatus <> 0) or (@O_SQL_Error_State <> 0) )  return (@iStatus)  if @I_iRecordType = 1  begin  select @InsertStmt = ('insert into ' + rtrim(@I_cTempTableName) + ' select SECURITYTASKID, SECURITYTASKNAME from SY09000 where SECURITYTASKID not in(select SECURITYTASKID from SY10600) and  SECURITYTASKID between ''' + rtrim(@I_cStartRange) + ''' and ''' + rtrim(@I_cEndRange) + '''')  exec(@InsertStmt)  if @I_tRemoveRecords = @TRUE  begin  delete SY09000 where SECURITYTASKID not in(select SECURITYTASKID from SY10600) and  SECURITYTASKID between @I_cStartRange and @I_cEndRange  delete SY10700 where SECURITYTASKID not in(select SECURITYTASKID from SY10600) and  SECURITYTASKID between @I_cStartRange and @I_cEndRange  end end else if @I_iRecordType = 2  begin  select @InsertStmt = ('insert into ' + rtrim(@I_cTempTableName) + ' select SECURITYROLEID, SECURITYROLENAME from SY09100 where SECURITYROLEID not in(select SECURITYROLEID from SY10500) and  SECURITYROLEID between ''' + rtrim(@I_cStartRange) + ''' and ''' + rtrim(@I_cEndRange) + '''')  exec(@InsertStmt)  if @I_tRemoveRecords = @TRUE  begin  delete SY09100 where SECURITYROLEID not in(select SECURITYROLEID from SY10500) and  SECURITYROLEID between @I_cStartRange and @I_cEndRange  delete SY10600 where SECURITYROLEID not in(select SECURITYROLEID from SY10500) and  SECURITYROLEID between @I_cStartRange and @I_cEndRange  end end else if @I_iRecordType = 3 begin  select @InsertStmt = ('insert into ' + rtrim(@I_cTempTableName) + ' select SECMODALTID, SECMODALTDESC from SY09200 where SECMODALTID not in(select SECMODALTID from SY10550) and  SECMODALTID between ''' + rtrim(@I_cStartRange) + ''' and ''' + rtrim(@I_cEndRange) + '''')  exec(@InsertStmt)   if @I_tRemoveRecords = @TRUE  begin  delete SY09200 where SECMODALTID not in(select SECMODALTID from SY10550) and  SECMODALTID between @I_cStartRange and @I_cEndRange  delete SY10800 where SECMODALTID not in(select SECMODALTID from SY10550) and  SECMODALTID between @I_cStartRange and @I_cEndRange  end end  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[sySecurityMassDelete] TO [DYNGRP]
GO