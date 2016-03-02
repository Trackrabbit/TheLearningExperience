SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smAddPostingSecurityRecord]  @I_sSeries smallint = NULL,  @I_cOrigin char(25) = NULL,  @I_cName char(255) = NULL,  @I_cUserID char(15) = NULL,  @I_cCompanyName char(64) = NULL,  @I_tTrxPosting tinyint = NULL,  @I_sStartEnd smallint = NULL,  @I_iSQLSessionID int = NULL,  @O_iErrorState int = NULL output as  declare  @cComputerChecks char(255),   @cStuffMessage char(255),   @cOriginalMessage char(255),   @cUpdatedMessage1 char(255),   @cUpdatedMessage2 char(255),   @cSecurityDesc char(98),    @cSearchString1 char(2),    @cSearchString2 char(2),    @bTrackPostingLog binary(4),   @iError int,    @iStatus int,     @iCount int,     @iIndex int,     @iMS_Position int,     @iRowCount int,     @sCompanyID smallint,    @tTransaction tinyint,    @tTrackUser tinyint,    @tDone tinyint,    @TRUE tinyint,    @FALSE tinyint,    @sDefaultDate char(12),  @sDefaultTime char(12),  @cDBName char(5),  @iMessageNo int  if @I_sSeries is NULL or  @I_cOrigin is NULL or  @I_cOrigin = '' or  @I_cName is NULL or  @I_cName = '' or  @I_cUserID is NULL or  @I_cUserID = '' or  @I_cCompanyName is NULL or  @I_cCompanyName = '' or  @I_tTrxPosting is NULL or  @I_sStartEnd is NULL or  @I_iSQLSessionID is NULL begin  select @O_iErrorState = 20505  return end else  select @O_iErrorState = 0  if @I_sSeries < 2 or @I_sSeries > 7  begin  select @O_iErrorState = 20506  return end  if @I_sStartEnd < 1 or @I_sStartEnd > 3  begin  select @O_iErrorState = 20552  return end  select  @TRUE = 1,  @FALSE = 0,  @cSearchString1 = '%1',  @cSearchString2 = '%2',  @iCount = 0,  @bTrackPostingLog = 0x00000000,  @iStatus = 0  exec @iStatus = smGetDefaultDate @sDefaultDate output exec @iStatus = smGetDefaultTime @sDefaultTime output  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  while @tDone is NULL begin  select @tDone = 1   select   @sCompanyID = CMPANYID  from  DYNAMICS.dbo.SY01500  (NOLOCK)  where  CMPNYNAM = @I_cCompanyName   if @@rowcount <> 1  begin  select @O_iErrorState = 20507  break  end   select  @tTrackUser = TRKUSER  from  DYNAMICS.dbo.SY60100  where  USERID = @I_cUserID  and CMPANYID = @sCompanyID   if @@rowcount <> 1  begin  select @O_iErrorState = 20508  break  end  if @tTrackUser = @FALSE  begin  break  end   if @I_sSeries = 4 and @I_cOrigin = 'Computer Checks'   select @iCount = 2  else  select  @iCount = count(SEQNUMBR)  from  SY01000  where  SERIES = @I_sSeries  and SEQNUMBR > 0  and SEQNUMBR <= (select max(SEQNUMBR) from SY01000  where  SERIES = @I_sSeries  and TRXSOURC = @I_cOrigin)   if @iCount < 1 or @iCount > 32  begin  select @O_iErrorState = 20509  break  end   exec @iStatus = smDetermineMSItemValue  @iCount,  @iMS_Position output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end   if @iStatus <> 0 or @O_iErrorState <> 0  begin  break  end   if @I_sSeries = 2  begin  select  @bTrackPostingLog = TRKPSTLOG_1  from  DYNAMICS.dbo.SY04300   select @iRowCount = @@rowcount  end  else if @I_sSeries = 3  begin  select  @bTrackPostingLog = TRKPSTLOG_2  from  DYNAMICS.dbo.SY04300   select @iRowCount = @@rowcount  end  else if @I_sSeries = 4  begin  select  @bTrackPostingLog = TRKPSTLOG_3  from  DYNAMICS.dbo.SY04300   select @iRowCount = @@rowcount  end  else if @I_sSeries = 5  begin  select  @bTrackPostingLog = TRKPSTLOG_4  from  DYNAMICS.dbo.SY04300   select @iRowCount = @@rowcount  end  else if @I_sSeries = 6  begin   select  @bTrackPostingLog = TRKPSTLOG_5  from  DYNAMICS.dbo.SY04300   select @iRowCount = @@rowcount  end  else if @I_sSeries = 7  begin  select  @bTrackPostingLog = TRKPSTLOG_6  from  DYNAMICS.dbo.SY04300   select @iRowCount = @@rowcount  end   if @bTrackPostingLog is NULL  select @bTrackPostingLog = 0x00000000   if @iRowCount > 1  begin  select @O_iErrorState = 20535  break  end   if @bTrackPostingLog & @iMS_Position = @iMS_Position  begin  if @I_tTrxPosting = @TRUE  begin  if @I_sStartEnd = 1  select @iMessageNo = 909  else if @I_sStartEnd = 2  select @iMessageNo = 912  else  select @iMessageNo = 9075   select @cDBName = db_name()  exec @iStatus = DYNAMICS.dbo.smGetMsgString  @iMessageNo,  @cDBName,  @cOriginalMessage output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end    if @iStatus <> 0 or @O_iErrorState <> 0  break   end   else   begin  select @cDBName = db_name()  exec @iStatus = DYNAMICS.dbo.smGetConstantString  'TRX_SOURCE_PM_COMPUTER',  @cComputerChecks output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end  if @iStatus <> 0 or @O_iErrorState <> 0  break   if @I_sStartEnd = 1  if @I_sSeries = 6 and ltrim(rtrim(@I_cOrigin)) = ltrim(rtrim(@cComputerChecks))  select @iMessageNo = 917  else  select @iMessageNo = 914  else if @I_sStartEnd = 2  if @I_sSeries = 6 and ltrim(rtrim(@I_cOrigin)) = ltrim(rtrim(@cComputerChecks))  select @iMessageNo = 918  else  select @iMessageNo = 913  else  select @iMessageNo = 9076   exec @iStatus = DYNAMICS.dbo.smGetMsgString  @iMessageNo,  @cDBName,  @cOriginalMessage output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end  if @iStatus <> 0 or @O_iErrorState <> 0  break  end    select  @iIndex = charindex(@cSearchString1, @cOriginalMessage)   if @iIndex = 0  begin  select @O_iErrorState = 20511  break  end   select   @cUpdatedMessage1 = stuff(@cOriginalMessage, @iIndex, 2, rtrim(@I_cOrigin))   select  @iIndex = charindex(@cSearchString2, @cUpdatedMessage1)   if @iIndex = 0  begin  select @O_iErrorState = 20511  break  end   select   @cUpdatedMessage2 = stuff(@cUpdatedMessage1, @iIndex, 2, rtrim(@I_cName))   select @cSecurityDesc = substring(@cUpdatedMessage2,1,98)   insert into  DYNAMICS.dbo.SY05000(  INDEX1,  CMPNYNAM,  USERID,  INQYTYPE,  DATE1,  TIME1,  SECDESC,  PRODNAME)  values  (5,  @I_cCompanyName,  @I_cUserID,  @iCount+((@I_sSeries - 1) * 100),  @sDefaultDate,  @sDefaultTime,  @cSecurityDesc,  '')  if @@rowcount <> 1  begin  select @O_iErrorState = 20512  break  end   end  end   if @iStatus <> 0 or @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else begin  if @tTransaction = 1  commit transaction end  return    
GO
GRANT EXECUTE ON  [dbo].[smAddPostingSecurityRecord] TO [DYNGRP]
GO
