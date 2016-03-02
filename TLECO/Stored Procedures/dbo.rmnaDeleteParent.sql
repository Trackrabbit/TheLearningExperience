SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmnaDeleteParent]  @I_cParentID char(15) = NULL,  @O_iErrorState          int             = NULL  output as  declare  @iStatus    int,  @tTransaction tinyint,  @tLoop tinyint,  @iError int,  @sRELEASE smallint,  @FALSE tinyint,  @sUpdateStatus smallint  select   @O_iErrorState   = 0,  @iStatus  = 0,  @sRELEASE  = 3,  @FALSE   = 0,  @sUpdateStatus  = 0  while (@tLoop is NULL) begin  select @tLoop = 1   if  @I_cParentID is NULL  begin  select @O_iErrorState = 21061   break   end   if @@trancount = 0  begin  select @tTransaction = 1  begin transaction  end    delete  RM00105   where   CPRCSTNM = @I_cParentID   select @iError = @@error   if  (@iError <> 0)  begin  select @iStatus = @iError  break  end    exec @iStatus = rmnaUpdateCustomer  @sRELEASE,  @FALSE,  @I_cParentID,  @I_cParentID,  @sUpdateStatus        output,  @O_iErrorState        output   select @iError = @@error   if  (@iError <> 0) or (@iStatus  <> 0) or (@sUpdateStatus <> 0)   begin  if  @iStatus = 0  select @iStatus = @iError  break  end  end   if (@iStatus <> 0) or (@O_iErrorState <> 0) or (@sUpdateStatus <> 0) begin  if @tTransaction = 1  rollback transaction  end else if @tTransaction = 1  commit transaction  return (@iStatus)   
GO
GRANT EXECUTE ON  [dbo].[rmnaDeleteParent] TO [DYNGRP]
GO
