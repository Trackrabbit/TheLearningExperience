SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smDropUser]  @I_cUserID char(15) = NULL,  @I_sCompanyID smallint = NULL,  @I_iSQLID int  = NULL,  @I_tControlUser tinyint = NULL,  @O_iErrorState int = NULL output as  declare  @iError int,    @iStatus int,     @tTransaction tinyint,    @cMasterOwner char(30),    @cDynamicsOwner char(30),   @TRUE tinyint    if @I_cUserID is NULL   or @I_iSQLID is NULL  or @I_sCompanyID is NULL  or @I_tControlUser is NULL  begin  select @O_iErrorState = 20182  return end  select  @O_iErrorState = 0,  @iStatus  = 0,  @tTransaction = NULL  exec @iStatus = DYNAMICS.dbo.smGetConstantInt  'TRUE',  @TRUE output,  @O_iErrorState output  select @iError = @@error if @iStatus = 0 and @iError <> 0 begin  select @iStatus = @iError end  if @iStatus <> 0 or @O_iErrorState <> 0   return @iStatus  delete   DYNAMICS.dbo.SY60100 where  USERID = @I_cUserID  and CMPANYID = @I_sCompanyID  if @@rowcount <> 1 begin  select @O_iErrorState = 20196  return end  return    
GO
GRANT EXECUTE ON  [dbo].[smDropUser] TO [DYNGRP]
GO
