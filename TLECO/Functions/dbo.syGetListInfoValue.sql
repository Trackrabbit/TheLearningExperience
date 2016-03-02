SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[syGetListInfoValue] (  @I_bError tinyint,  @I_bWFPresent tinyint,  @I_bOnHold tinyint,  @I_bInactive tinyint,  @I_bVoid tinyint,  @I_bEmail tinyint,  @I_bHasNote tinyint,  @I_bReconciled tinyint,  @I_bReqIncomplete tinyint,  @I_bDocAttached tinyint,  @I_bCustom1 tinyint,  @I_bCustom2 tinyint ) RETURNS int AS BEGIN  DECLARE  @InfoValue int  select  @InfoValue=0;  if @I_bError = 1 begin   select @InfoValue = @InfoValue + 1 end  if @I_bWFPresent = 1 begin   select @InfoValue = @InfoValue + 2 end  if @I_bOnHold = 1 begin   select @InfoValue = @InfoValue + 4 end  if @I_bInactive = 1 begin   select @InfoValue = @InfoValue + 8 end  if @I_bVoid = 1 begin   select @InfoValue = @InfoValue + 16 end  if @I_bEmail = 1 begin   select @InfoValue = @InfoValue + 32 end  if @I_bHasNote = 1 begin   select @InfoValue = @InfoValue + 64 end  if @I_bReconciled = 1 begin   select @InfoValue = @InfoValue + 128 end  if @I_bReqIncomplete = 1 begin  select @InfoValue = @InfoValue + 256 end  if @I_bDocAttached = 1 begin  select @InfoValue = @InfoValue + 512 end  if @I_bCustom1 = 1 begin   select @InfoValue = @InfoValue + 1024 end  if @I_bCustom2 = 1 begin   select @InfoValue = @InfoValue + 2048 end  return @InfoValue END   
GO
GRANT EXECUTE ON  [dbo].[syGetListInfoValue] TO [DYNGRP]
GO
