SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 create procedure [dbo].[duDropLDAccountTables]  @O_iErrorState  int     =       NULL    output as  select @O_iErrorState = 0  drop table GL00105T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table GL00100T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table GL10110T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table GL10111T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table GL70500T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table PM70500T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table RM00700T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table UPR70500T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table IV70500T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table IV30300T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table IV10001T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table AF40103T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end  drop table AF40106T  if @@error <> 0  begin  select @O_iErrorState = @@error  return end return    
GO
GRANT EXECUTE ON  [dbo].[duDropLDAccountTables] TO [DYNGRP]
GO
