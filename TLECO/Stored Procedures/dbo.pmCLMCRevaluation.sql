SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmCLMCRevaluation]  @I_cUserID char(15) = NULL,  @I_cMCPMRevaluation varchar(40) = NULL,  @O_iErrorState int  = NULL output as  declare  @iStatus int,  @iError int  if @I_cUserID is NULL or  @I_cMCPMRevaluation is NULL  begin  select @O_iErrorState = 20148  return(@iStatus) end  select  @O_iErrorState = 0,  @iStatus  = 0  insert into   #CNTRLNUMTEMP  (CNTRLNUM,  DOCTYPE,  VENDORID) select  VCHRNMBR,  DOCTYPE,  VENDORID from  MC020105 where not exists(  select  1   from MC020103  where MC020103.DOCTYPE = MC020105.DOCTYPE  and MC020103.VCHRNMBR = MC020105.VCHRNMBR)  if @@rowcount <> 0  begin  delete  MC020105  from  #CNTRLNUMTEMP  where  MC020105.VCHRNMBR  =  #CNTRLNUMTEMP.CNTRLNUM  and MC020105.DOCTYPE =  #CNTRLNUMTEMP.DOCTYPE   exec @iStatus = smCreateErrorLogRecord  @I_cUserID,  @I_cMCPMRevaluation,  NULL,  17638,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if @iStatus <> 0 or @O_iErrorState <> 0  return (@iStatus) end  return(@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[pmCLMCRevaluation] TO [DYNGRP]
GO
