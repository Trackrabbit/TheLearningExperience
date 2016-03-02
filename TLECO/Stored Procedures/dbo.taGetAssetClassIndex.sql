SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetAssetClassIndex]  @I_tInc_Dec tinyint = NULL, @O_vAssetClassIndex int = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @iError int,  @iStatus int,  @vFAIndex int  select @O_vAssetClassIndex = 0,  @O_iErrorState  = 0  if @I_tInc_Dec is NULL  begin  select @O_iErrorState = 9153     return (@O_iErrorState) end  select @O_vAssetClassIndex = INDXVALUE + 1 from FAINDEX WITH (TABLOCKX HOLDLOCK)  where INDXNAME = 3  if ( @@rowcount <> 1) begin  select @O_iErrorState = 9154   end  if @O_iErrorState = 0 begin  select @vFAIndex = @O_vAssetClassIndex   update FAINDEX set INDXVALUE = @vFAIndex   where INDXNAME = 3  end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vAssetClassIndex = 0 end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetAssetClassIndex] TO [DYNGRP]
GO
