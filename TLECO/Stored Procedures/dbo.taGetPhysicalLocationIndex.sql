SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetPhysicalLocationIndex]  @I_tInc_Dec tinyint = NULL, @O_vPhysicalLocationIndex int = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @iError int,  @iStatus int,  @vFAIndex int  select @O_vPhysicalLocationIndex = 0,  @O_iErrorState  = 0  if @I_tInc_Dec is NULL  begin  select @O_iErrorState = 5363     return (@O_iErrorState) end  select @O_vPhysicalLocationIndex = INDXVALUE + 1 from FAINDEX WITH (TABLOCKX HOLDLOCK)  where INDXNAME = 18  if ( @@rowcount <> 1) begin  select @O_iErrorState = 5364   end  if @O_iErrorState = 0 begin  select @vFAIndex = @O_vPhysicalLocationIndex   update FAINDEX set INDXVALUE = @vFAIndex   where INDXNAME = 18  end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vPhysicalLocationIndex = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetPhysicalLocationIndex] TO [DYNGRP]
GO
