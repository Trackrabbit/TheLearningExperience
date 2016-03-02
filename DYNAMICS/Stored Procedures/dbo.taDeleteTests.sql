SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taDeleteTests]  @I_vTEST_I char(31),     @I_vTESTCODE_I char(7),     @I_vRequesterTrx smallint = 0,   @I_vUSRDEFND1 char(50) = '',      @I_vUSRDEFND2 char(50) = '',      @I_vUSRDEFND3 char(50) = '',      @I_vUSRDEFND4 varchar(8000) = '',  @I_vUSRDEFND5 varchar(8000) = '',  @O_iErrorState int output, @oErrString varchar(255) output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare   @O_oErrorState int,  @iCustomState int,  @iCustomErrString varchar(255),  @iStatus int,      @iError int       select   @iCustomState = 0,  @O_oErrorState = 0,  @iCustomErrString = '',  @O_iErrorState = 0  if (@oErrString is null) begin  select @oErrString = '' end  exec @iStatus = taDeleteTestsPre  @I_vTEST_I output,  @I_vTESTCODE_I output,  @I_vRequesterTrx output,  @I_vUSRDEFND1 output,  @I_vUSRDEFND2 output,  @I_vUSRDEFND3 output,  @I_vUSRDEFND4 output,  @I_vUSRDEFND5 output,  @O_iErrorState  = @iCustomState output,  @oErrString = @iCustomErrString output  select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @O_iErrorState = 8733    exec @iStatus = taUpdateString  @O_iErrorState,  @iCustomErrString,  @oErrString output,  @O_oErrorState output end  if ( @I_vTEST_I is null or  @I_vTESTCODE_I is null or   @I_vRequesterTrx is null  ) begin  select @O_iErrorState = 8734    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  select  @I_vTESTCODE_I = UPPER(@I_vTESTCODE_I)  if (@I_vTEST_I = '') begin  select @O_iErrorState = 8735    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vTESTCODE_I = '') begin  select @O_iErrorState = 8736    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@I_vTEST_I <> '') begin  if not exists(select 1 from DYNAMICS..HRTST012 (nolock) where UPPER(TEST_I) = UPPER(@I_vTEST_I))  begin   select @O_iErrorState = 8737     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vTESTCODE_I <> '') begin  if not exists(select 1 from DYNAMICS..HRTST012 (nolock) where TESTCODE_I = @I_vTESTCODE_I)  begin   select @O_iErrorState = 8738     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  end end  if (@I_vRequesterTrx not in (0,1)) begin  select @O_iErrorState = 8739     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  if (@O_iErrorState <> 0) begin  return (@O_iErrorState) end  delete DYNAMICS..HRTST012 where UPPER(TEST_I) = UPPER(@I_vTEST_I) and TESTCODE_I = @I_vTESTCODE_I if (@@error <> 0) begin  select @O_iErrorState = 8740    exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  exec @iStatus = taDeleteTestsPost  @I_vTEST_I,  @I_vTESTCODE_I,  @I_vRequesterTrx,  @I_vUSRDEFND1,  @I_vUSRDEFND2,  @I_vUSRDEFND3,  @I_vUSRDEFND4,  @I_vUSRDEFND5,  @O_iErrorState  = @iCustomState output,  @oErrString = @iCustomErrString output  select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @O_iErrorState = 8741    exec @iStatus = taUpdateString  @O_iErrorState,  @iCustomErrString,  @oErrString output,  @O_oErrorState output  return (@O_iErrorState) end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taDeleteTests] TO [DYNGRP]
GO
