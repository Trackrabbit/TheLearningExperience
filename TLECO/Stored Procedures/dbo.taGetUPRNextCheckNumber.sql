SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetUPRNextCheckNumber] @I_vInc_Dec tinyint = NULL, @O_vCHEKNMBR char(20) = NULL output, @O_vCHEKBKID char(15) = NULL output, @O_iErrorState int = NULL output   with encryption as  set transaction isolation level read uncommitted set nocount on  declare @Loop int,  @iError int,  @iStatus int,  @CHEKNMBR char(20),  @DocExists tinyint   select  @CHEKNMBR='',  @O_iErrorState = 0,  @iStatus = 0,  @Loop = 0,  @DocExists = 1  if  @I_vInc_Dec is NULL begin  select @O_iErrorState = 2366   return (@O_iErrorState) end  select @O_vCHEKNMBR = NXTCHNUM from CM00100 WITH (TABLOCKX HOLDLOCK) where CHEKBKID = @O_vCHEKBKID if (@@rowcount <> 1) begin  select @O_iErrorState = 2367    return (@O_iErrorState) end  select @CHEKNMBR = @O_vCHEKNMBR  while (@Loop < 1000) begin  select @Loop = @Loop + 1  select @DocExists = 0   exec @iStatus = ivNumber_Inc_Dec  @I_vInc_Dec,  @CHEKNMBR output,  @O_iErrorState output  select @iError = @@error  if (@iError <> 0 or @iStatus <> 0 or @O_iErrorState <> 0)  begin  select @O_iErrorState = 2368    select @DocExists = 0  break  end  break end  if (@O_iErrorState = 0) begin  update CM00100 set NXTCHNUM = @CHEKNMBR where CHEKBKID = @O_vCHEKBKID  if (@@error <> 0)  begin  select @O_iErrorState = 2371    end end else begin  select @O_vCHEKNMBR = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetUPRNextCheckNumber] TO [DYNGRP]
GO
