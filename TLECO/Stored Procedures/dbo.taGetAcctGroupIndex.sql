SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetAcctGroupIndex]  @I_tInc_Dec tinyint = NULL, @O_vAcctGroupIndex int = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @iError int,  @iStatus int,  @vFAIndex int  select @O_vAcctGroupIndex = 0,  @O_iErrorState  = 0  if @I_tInc_Dec is NULL  begin  select @O_iErrorState = 9149     return (@O_iErrorState) end  select @O_vAcctGroupIndex = INDXVALUE + 1 from FAINDEX WITH (TABLOCKX HOLDLOCK)  where INDXNAME = 1  if ( @@rowcount <> 1) begin  select @O_iErrorState = 9150   end  if @O_iErrorState = 0 begin  select @vFAIndex = @O_vAcctGroupIndex   update FAINDEX set INDXVALUE = @vFAIndex   where INDXNAME = 1  end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vAcctGroupIndex = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetAcctGroupIndex] TO [DYNGRP]
GO
