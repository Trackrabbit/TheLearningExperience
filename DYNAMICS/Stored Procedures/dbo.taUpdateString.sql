SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taUpdateString]  @I_vERRORVALUE  int, @I_vERROR  char(255), @I_iERROR  char(255) output, @O_iErrorState  int = NULL output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare  @ERRORVALUE char(25),   @iStatus int,  @iError int  select  @O_iErrorState = 0,    @iStatus = 0,  @iError = 0  if (@I_vERROR is NULL) begin  select @I_vERROR = '' end  if (@I_iERROR is NULL) begin  select @I_iERROR = '' end  if( @I_vERROR is NULL or  @I_iERROR is NULL or  @I_vERRORVALUE is NULL ) begin  select @O_iErrorState = 3392   return end  select @ERRORVALUE = ltrim(rtrim(str(@I_vERRORVALUE)))  select @I_iERROR = ltrim(rtrim(ltrim(@I_vERROR)) + ' '+ rtrim(ltrim(@ERRORVALUE)))  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taUpdateString] TO [DYNGRP]
GO
