SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taRequesterTrxDisabler]  @I_vDOCTYPE varchar(50),   @I_vINDEX1 varchar(75)='',   @I_vINDEX2 varchar(75)='',   @I_vINDEX3 varchar(75)='',   @I_vINDEX4 varchar(75)='',   @I_vINDEX5 varchar(75)='',   @I_vINDEX6 varchar(75)='',  @I_vINDEX7 varchar(75)='',   @I_vINDEX8 varchar(75)='',   @I_vINDEX9 varchar(75)='',   @I_vINDEX10 varchar(75)='',   @I_vINDEX11 varchar(75)='',   @I_vINDEX12 varchar(75)='',  @I_vINDEX13 varchar(75)='',   @I_vINDEX14 varchar(75)='',   @I_vINDEX15 varchar(75)='',   @I_vDelete smallint = 0,  @O_iErrorState int output, @oErrString varchar(255) output  with encryption as  set transaction isolation level read uncommitted  SET NOCOUNT ON  declare @proc char(50),  @actionbegin int,  @actionend int,  @iCustomState int,  @iStatus int,  @iError int,  @O_oErrorState int  select  @proc = '',  @actionbegin = 0,  @actionend = 0,  @iCustomState = 0,  @iStatus = 0,  @iError = 0,  @O_oErrorState = 0,  @O_iErrorState = 0  if (@oErrString is null) begin  select @oErrString = '' end  exec @iStatus = eConnectOutVerify  @I_vDOCTYPE=@I_vDOCTYPE,  @I_vINDEX1=@I_vINDEX1,  @I_vINDEX2=@I_vINDEX2,  @I_vINDEX3=@I_vINDEX3,  @I_vINDEX4=@I_vINDEX4,  @I_vINDEX5=@I_vINDEX5,  @I_vINDEX6=@I_vINDEX6,  @I_vINDEX7=@I_vINDEX7,  @I_vINDEX8=@I_vINDEX8,  @I_vINDEX9=@I_vINDEX9,  @I_vINDEX10=@I_vINDEX10,  @I_vINDEX11=@I_vINDEX11,  @I_vINDEX12=@I_vINDEX12,  @I_vINDEX13=@I_vINDEX13,  @I_vINDEX14=@I_vINDEX14,  @I_vINDEX15=@I_vINDEX15,  @I_vDelete=@I_vDelete,  @O_iErrorState = @iCustomState output  select @iError = @@error if ((@iStatus <> 0) or (@iCustomState <> 0) or (@iError <> 0)) begin  select @oErrString = rtrim(@oErrString) + ' ' + @iCustomState  select @O_iErrorState = 8152     exec @iStatus = taUpdateString  @O_iErrorState,  @oErrString,  @oErrString output,  @O_oErrorState output end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taRequesterTrxDisabler] TO [DYNGRP]
GO
