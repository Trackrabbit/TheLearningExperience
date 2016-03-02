SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetLeaseIndex]  @I_tInc_Dec tinyint = NULL, @O_vLeaseIndex int = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @iError int,  @iStatus int,  @vFAIndex int  select @O_vLeaseIndex = 0,  @O_iErrorState  = 0  if @I_tInc_Dec is NULL  begin  select @O_iErrorState = 5357     return (@O_iErrorState) end  select @O_vLeaseIndex = INDXVALUE + 1 from FAINDEX WITH (TABLOCKX HOLDLOCK)  where INDXNAME = 8  if ( @@rowcount <> 1) begin  select @O_iErrorState = 5358   end  if @O_iErrorState = 0 begin  select @vFAIndex = @O_vLeaseIndex   update FAINDEX set INDXVALUE = @vFAIndex   where INDXNAME = 8  end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vLeaseIndex = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetLeaseIndex] TO [DYNGRP]
GO
