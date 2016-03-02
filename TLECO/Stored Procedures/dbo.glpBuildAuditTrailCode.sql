SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpBuildAuditTrailCode]  @I_iSQLSessionID                int             = NULL,  @I_sTransactionType             smallint        = NULL,  @I_sSeries                      smallint        = NULL,  @I_tHistory                     tinyint         = NULL,  @I_tBuildICAuditTrailCode tinyint   = NULL,  @O_bHeaderMessages              binary(4)       = NULL  output,  @O_cAuditTrailCode              char(13)        = NULL  output,  @O_iErrorState                  int             = NULL  output as  declare  @TRUE                   tinyint,   @FALSE                  tinyint,  @BUSINESS_FORM          smallint,  @BUDGET_TRX smallint,  @CLEARING_TRX           smallint,  @NORMAL_TRX             smallint,  @AUTO_REV_TRX           smallint,  @MS_ITEM_26             int,  @MAX_TRX_SEQ_NUMBER     int,  @cPrefix                char(5),  @cDBName          char(5),  @cFiller                char(8),  @iMessageNumber        int,  @iNumber                int,  @tTransaction           int,  @iStatus                int,  @iError                 int,  @tLoop                  tinyint  select  @O_cAuditTrailCode      = ' ',  @O_iErrorState          = 0,  @iStatus                = 0  select  @TRUE                   = 1,  @FALSE                  = 0,  @BUSINESS_FORM          = 5,  @BUDGET_TRX    = 4,  @CLEARING_TRX           = 2,  @NORMAL_TRX             = 1,  @AUTO_REV_TRX           = 4,  @MS_ITEM_26             = power(2,1),  @MAX_TRX_SEQ_NUMBER     = 99999999  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin   select @tLoop = 1   if      @I_iSQLSessionID         is NULL or  @I_sTransactionType      is NULL or  @I_sSeries               is NULL or  @I_tHistory              is NULL or  @I_tBuildICAuditTrailCode is NULL  begin  select @O_iErrorState = 20008  break  end    if @I_sTransactionType = @CLEARING_TRX  select @iMessageNumber = 180     else if @I_sTransactionType = @BUDGET_TRX  select @iMessageNumber = 9944     else if @I_sTransactionType = @BUSINESS_FORM  begin  if @I_tHistory = @TRUE  select @iMessageNumber = 181    else  select @iMessageNumber = 182    end   else if @I_sTransactionType = @NORMAL_TRX or   @I_sTransactionType = @AUTO_REV_TRX   begin  if @I_tBuildICAuditTrailCode = @TRUE  begin  if @I_tHistory = @TRUE  select @iMessageNumber = 18670   else  select @iMessageNumber = 18671   end  else  begin  if @I_tHistory = @TRUE  select @iMessageNumber = 183   else  select @iMessageNumber = 184   end  end    else  begin  select @O_iErrorState = 20289  break  end     select @cDBName = db_name()   exec @iStatus = DYNAMICS..smGetMsgString  @iMessageNumber,   @cDBName,   @cPrefix        output,  @O_iErrorState  output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0  break      update  SY01000  set     NTRXSNUM = NTRXSNUM + 1  where  SERIES  = @I_sSeries  and     TRXSRCPX = @cPrefix   if @@rowcount <> 1  begin  select   @O_iErrorState = 20020   break  end    select   @iNumber = NTRXSNUM - 1  from  SY01000  where  SERIES  = @I_sSeries  and     TRXSRCPX = @cPrefix   if @@rowcount <> 1  begin  select   @O_iErrorState = 20009  break  end    if @iNumber = @MAX_TRX_SEQ_NUMBER  begin   select @iNumber = 1   update  SY01000  set     NTRXSNUM = 1  where  SERIES  = @I_sSeries  and     TRXSRCPX = @cPrefix   if @@rowcount <> 1  begin  select   @O_iErrorState = 20020   break  end    end    exec @iStatus = DYNAMICS..smGetMsgString  15580,                            @cDBName,  @cFiller                output,  @O_iErrorState  output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   if @iStatus <> 0 or @O_iErrorState <> 0  break   select @O_cAuditTrailCode = @cPrefix + stuff(@cFiller,  8 - len(rtrim(ltrim(convert(char(13),@iNumber)))) + 1,  len(rtrim(ltrim(convert(char(13),@iNumber)))),  rtrim(ltrim(convert(char(13),@iNumber)))  )  end   if @iStatus <> 0 or @O_iErrorState <> 0 begin   select @O_bHeaderMessages =   (@O_bHeaderMessages | @MS_ITEM_26)    if @tTransaction = 1  rollback transaction  end else if @tTransaction = 1  commit transaction  return (@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[glpBuildAuditTrailCode] TO [DYNGRP]
GO