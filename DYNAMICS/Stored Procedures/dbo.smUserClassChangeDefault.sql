SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smUserClassChangeDefault]  @I_cUserClass   char(15) = NULL,  @I_iSQLSessionID        int = NULL,  @O_iErrorState  int = NULL output as  declare  @tTransaction   tinyint,          @iError int,     @iStatus        int,              @FALSE          tinyint,  @TRUE           tinyint  if @I_cUserClass is NULL  or @I_iSQLSessionID is NULL  or @I_cUserClass = '' begin  select @O_iErrorState = 20086  return end else begin  select @O_iErrorState = 0 end  if exists (select  1  from  SY40400   where  USRCLASS = @I_cUserClass) begin  exec @iStatus = smGetConstantInt  'FALSE',  @FALSE output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end   if @iStatus <> 0 or @O_iErrorState <> 0  return @iStatus   exec @iStatus = smGetConstantInt  'TRUE',  @TRUE output,  @O_iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  begin  select @iStatus = @iError  end   if @iStatus <> 0 or @O_iErrorState <> 0  return @iStatus   if @@trancount = 0  begin  select @tTransaction = 1  begin transaction  end   update  SY40400  set   DEFLTCLS = @FALSE  where   DEFLTCLS = @TRUE  and     USRCLASS <> @I_cUserClass   if @tTransaction = 1  commit transaction  end  return    
GO
GRANT EXECUTE ON  [dbo].[smUserClassChangeDefault] TO [DYNGRP]
GO
