SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smUserClassCopyCloneCHG]  @I_cNewUserClass        char(15) = NULL,  @I_cCloneFromClass      char(15) = NULL,  @O_iErrorState          int = NULL output as  declare  @tTransaction   tinyint,          @iCount         int               if @I_cNewUserClass is NULL   or @I_cCloneFromClass is NULL  begin  select @O_iErrorState = 20088  return end  if @I_cNewUserClass = ''  or @I_cCloneFromClass = '' begin  select @O_iErrorState = 20235  return end  if exists(select  1  from  SY40200  where  USRCLASS = @I_cNewUserClass) begin  select @O_iErrorState = 20092  return end  select @O_iErrorState = 0,  @iCount = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  select  @iCount = count(USRCLASS) from  SY40200 where  USRCLASS = @I_cCloneFromClass  if @iCount <> 0 begin   insert into SY40200  (USRCLASS,  REPORTID)  select  @I_cNewUserClass,  REPORTID  from  SY40200  where  USRCLASS = @I_cCloneFromClass   if @@rowcount <> @iCount  begin  if @tTransaction = 1  rollback transaction  select @O_iErrorState = 20240  return  end end  if @tTransaction = 1  commit transaction  return    
GO
GRANT EXECUTE ON  [dbo].[smUserClassCopyCloneCHG] TO [DYNGRP]
GO
