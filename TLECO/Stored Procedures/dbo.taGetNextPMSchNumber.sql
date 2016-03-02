SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taGetNextPMSchNumber]  @I_tInc_Dec tinyint = NULL,    @O_vSCHEDULE_NUMBER varchar(21) = NULL output, @O_iErrorState int = NULL output    with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @iError int,  @iStatus int,  @SCHEDULE_NUMBER varchar (21)  select  @O_vSCHEDULE_NUMBER = '',  @O_iErrorState  = 0  if @I_tInc_Dec is NULL begin  select @O_iErrorState = 3056    return (@O_iErrorState) end  select @O_vSCHEDULE_NUMBER = PMNXTSCHDNBR from PM40100 WITH (TABLOCKX HOLDLOCK) where UNIQKEY = 1 if ( @@rowcount <> 1) begin  select @O_iErrorState = 3057   end  if @O_iErrorState = 0 begin  select @SCHEDULE_NUMBER = @O_vSCHEDULE_NUMBER   exec @iStatus = ivNumber_Inc_Dec  @I_tInc_Dec,  @SCHEDULE_NUMBER output,  @O_iErrorState output  select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError   update PM40100 set PMNXTSCHDNBR = @SCHEDULE_NUMBER where UNIQKEY = 1 end  if @O_iErrorState <> 0 or @iStatus <> 0 begin  select @O_vSCHEDULE_NUMBER = '' end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taGetNextPMSchNumber] TO [DYNGRP]
GO
