SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[pmVendorCombiner] @I_charStartVendor  char(31),  @I_charEndVendor char(31),  @O_iErrorState   int = NULL output  as  set transaction isolation level read uncommitted set nocount on  declare   @iStatus int,  @iError int,   @tTransaction tinyint,  @tLoop tinyint  select @O_iErrorState = 0  if @@trancount = 0  begin  select @tTransaction = 1  begin transaction end  while ( @tLoop is NULL ) begin  select @tLoop = 1   if exists (select * from sysobjects where id=object_id('dbo.taVendorInsert'))  alter table PM00200 disable trigger taVendorInsert  if @@error <> 0  begin  select @O_iErrorState=2   break  end   if exists (select * from sysobjects where id=object_id('dbo.taVendorAddressInsert'))  alter table PM00300 disable trigger taVendorAddressInsert  if @@error <> 0  begin  select @O_iErrorState=3   break  end   exec @iStatus = pmChangeVendorMaster  @I_charStartVendor,  @I_charEndVendor,  @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@O_iErrorState <> 0)  begin  select @O_iErrorState = 4  break  end end   if exists (select * from sysobjects where id=object_id('dbo.taVendorInsert'))  alter table PM00200 enable trigger taVendorInsert if @@error <> 0 begin  select @O_iErrorState=5  end  if exists (select * from sysobjects where id=object_id('dbo.taVendorAddressInsert'))  alter table PM00300 enable trigger taVendorAddressInsert if @@error <> 0 begin  select @O_iErrorState=6  end  if @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction end else if @tTransaction = 1 begin  commit transaction end  return    
GO
GRANT EXECUTE ON  [dbo].[pmVendorCombiner] TO [DYNGRP]
GO
