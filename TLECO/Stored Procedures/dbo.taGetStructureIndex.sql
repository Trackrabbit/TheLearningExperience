SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetStructureIndex]  @I_tInc_Dec tinyint = NULL, @O_vStructureIndex int = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @iError int,  @iStatus int,  @vFAIndex int  select @O_vStructureIndex = 0,  @O_iErrorState  = 0  if @I_tInc_Dec is NULL  begin  select @O_iErrorState = 5366     return (@O_iErrorState) end  select @O_vStructureIndex = INDXVALUE + 1 from FAINDEX WITH (TABLOCKX HOLDLOCK)  where INDXNAME = 12  if ( @@rowcount <> 1) begin  select @O_iErrorState = 5367   end  if @O_iErrorState = 0 begin  select @vFAIndex = @O_vStructureIndex   update FAINDEX set INDXVALUE = @vFAIndex   where INDXNAME = 12  end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vStructureIndex = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetStructureIndex] TO [DYNGRP]
GO
