SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glpVerifySourceDocument]  @I_cSourceDocument char(10) = NULL,  @I_tPosting tinyint  = NULL,  @IO_bHeaderMessages binary(4)       = NULL  output,  @O_iErrorState int             = NULL  output as  declare   @TRUE tinyint,  @MS_ITEM_8              int,  @cDescription char(31),  @tTransaction           tinyint,  @tLoop                  tinyint  select  @O_iErrorState  = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end   while (@tLoop is NULL) begin  select @tLoop = 1   if @I_cSourceDocument is NULL or  @I_tPosting is NULL or  @IO_bHeaderMessages is NULL  begin  select @O_iErrorState = 20679  break  end    select   @TRUE = 1,  @MS_ITEM_8 = convert(int, 0x80000000)   select  @cDescription = SDOCDSCR  from  SY00900  where   SOURCDOC = @I_cSourceDocument   if @@rowcount <> 1  begin  select   @IO_bHeaderMessages = (@IO_bHeaderMessages | @MS_ITEM_8)   if @I_tPosting = @TRUE  select @O_iErrorState = 20677   end   end   if  @O_iErrorState <> 0 begin  if @tTransaction = 1  rollback transaction  end else if @tTransaction = 1  commit transaction  return     
GO
GRANT EXECUTE ON  [dbo].[glpVerifySourceDocument] TO [DYNGRP]
GO
