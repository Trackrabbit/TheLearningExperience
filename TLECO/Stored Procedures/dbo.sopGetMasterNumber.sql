SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[sopGetMasterNumber]  @O_iOUTMasterNumber                   int             = NULL  output,  @O_iErrorState                        int             = NULL  output as   declare        @tTransaction           tinyint,  @iError int  select  @O_iOUTMasterNumber                    = 0,  @O_iErrorState  = 0  if @@trancount = 0 begin  select @tTransaction = 1  begin transaction end  update  SOP40100  WITH (TABLOCKX,HOLDLOCK) set  @O_iOUTMasterNumber = NXTMSTNO,  NXTMSTNO= NXTMSTNO + 1  if ( @@rowcount <> 1) begin  select          @O_iErrorState                  = 21035 end  if (( @O_iOUTMasterNumber = 99999999) or ( @O_iOUTMasterNumber = 0)) and @O_iErrorState = 0 begin  select   @O_iOUTMasterNumber = 1  update  SOP40100  set  NXTMSTNO = 2   if ( @@rowcount <> 1)  begin  select          @O_iErrorState                  = 21035  end end  if @O_iErrorState <> 0 begin  select           @O_iOUTMasterNumber    = 0  if @tTransaction = 1  rollback transaction  end else begin   if @tTransaction = 1  commit transaction end  return    
GO
GRANT EXECUTE ON  [dbo].[sopGetMasterNumber] TO [DYNGRP]
GO
