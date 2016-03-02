SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[smCreateEntityID] @I_sEntityID smallint = NULL output,  @O_iErrorState int = NULL output  as  declare  @tTransaction tinyint,   @iError int    if @I_sEntityID is NULL begin  select @O_iErrorState = 20964  return end  select @O_iErrorState = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  set rowcount 1  select @I_sEntityID = ENTITYID from ORG40100 if @@rowcount = 0 begin  select @I_sEntityID = 1 end else begin  select  @I_sEntityID = min(ENTITYID + 1)  from  ORG40100   where   ENTITYID + 1   not in   (select ENTITYID from ORG40100) end  if @@rowcount <> 1 begin  select @O_iErrorState = 20965  if @tTransaction = 1  rollback transaction  return end if @tTransaction = 1  commit transaction return    
GO
GRANT EXECUTE ON  [dbo].[smCreateEntityID] TO [DYNGRP]
GO
