SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetPMNextPaymentNumber]  @I_vInc_Dec tinyint = NULL, @O_iPMNPYNBR varchar(21) = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare @Loop int,  @iError int,  @iStatus int,  @PMNPYNBR varchar(21)  select @O_iPMNPYNBR  = '',  @O_iErrorState  = 0,  @iStatus = 0,  @Loop = 0  if  @I_vInc_Dec is NULL begin  select @O_iErrorState = 3393    return (@O_iErrorState) end  select @Loop = @Loop + 1 while @Loop <> 0 and @Loop < 1000 begin  select @Loop = @Loop + 1   select @O_iPMNPYNBR = PMNPYNBR from PM40100 WITH (TABLOCKX HOLDLOCK)  where UNIQKEY = 1  if ( @@rowcount <> 1)  begin  select @O_iErrorState = 3383    end   if @O_iErrorState = 0  begin  select @PMNPYNBR = @O_iPMNPYNBR   exec @iStatus = ivNumber_Inc_Dec  @I_vInc_Dec,  @PMNPYNBR output,  @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   update PM40100 set PMNPYNBR= @PMNPYNBR  where UNIQKEY = 1  if @@error = 0  select @Loop = 0  end end  if @O_iErrorState <> 0 or @iStatus <> 0 or @Loop <> 0 begin  select @O_iPMNPYNBR = ''  select @O_iErrorState = 3384    return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetPMNextPaymentNumber] TO [DYNGRP]
GO
