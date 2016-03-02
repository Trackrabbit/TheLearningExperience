SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmCLMCRevaluation]   @I_cUserID char(15) = NULL,  @I_cFileName1 varchar(40) = NULL,  @O_iErrorState int  = NULL output as  declare  @iError int,   @iStatus int,   @tLoop tinyint  select  @O_iErrorState = 0,  @iStatus  = 0  while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cUserID is NULL  or @I_cFileName1 is NULL  begin  select @O_iErrorState = 20147  break  end   insert into  #CNTRLNUMTEMP(   CNTRLNUM,  DOCTYPE,  VENDORID)  select  DOCNUMBR,  DOCTYPE,  CUSTNMBR  from   MC020104  where   not exists  (select 1  from   MC020102  where  MC020102.DOCNUMBR = MC020104.DOCNUMBR  and  MC020102.RMDTYPAL = MC020104.DOCTYPE)   if @@rowcount <> 0  begin  delete  MC020104  from   MC020104  where   not exists  (select 1  from   MC020102  where  MC020102.DOCNUMBR = MC020104.DOCNUMBR  and  MC020102.RMDTYPAL = MC020104.DOCTYPE)   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cFileName1,  NULL,  17638,  @O_iErrorState output   select @iError = @@error   if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  break   end   end   return(@iStatus)    
GO
GRANT EXECUTE ON  [dbo].[rmCLMCRevaluation] TO [DYNGRP]
GO
