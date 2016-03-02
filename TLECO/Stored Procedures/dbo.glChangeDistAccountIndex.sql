SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glChangeDistAccountIndex] @I_iAccountIndex int = NULL, @I_iOldDistAccountIndex int = NULL, @I_iNewDistAccountIndex int = NULL, @I_iSQLSessionID int = NULL, @O_iErrorState int = NULL output  as  declare  @tTransaction tinyint  if  @I_iAccountIndex is NULL  or @I_iOldDistAccountIndex is NULL  or @I_iNewDistAccountIndex is NULL  or @I_iSQLSessionID is NULL begin  select @O_iErrorState = 20607  return end  select  @O_iErrorState = 0  if @@trancount = 0 begin  begin transaction  select @tTransaction = 1 end else  select @tTransaction = 0  update  GL00103 set  DSTINDX = @I_iNewDistAccountIndex,  PRCNTAGE = 0.0 where  ACTINDX = @I_iAccountIndex  and DSTINDX = @I_iOldDistAccountIndex  if @@rowcount <> 1 begin  if @tTransaction = 1  rollback transaction   select @O_iErrorState = 20810  return end  update  GL00104 set  DSTINDX = @I_iNewDistAccountIndex where  ACTINDX = @I_iAccountIndex  and DSTINDX = @I_iOldDistAccountIndex  if exists (  select  1  from  GL00104  where  ACTINDX = @I_iAccountIndex  and DSTINDX = @I_iOldDistAccountIndex ) begin  if @tTransaction = 1  rollback transaction   select @O_iErrorState = 20612  return end  commit transaction  return    
GO
GRANT EXECUTE ON  [dbo].[glChangeDistAccountIndex] TO [DYNGRP]
GO
