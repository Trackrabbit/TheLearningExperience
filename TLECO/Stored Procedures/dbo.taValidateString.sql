SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[taValidateString]  @I_vMETHOD tinyint = NULL,   @I_vCHARACTERS varchar(255) = NULL, @O_iErrorState int = NULL output  with encryption as  set transaction isolation level read uncommitted set nocount on  declare @Loop int,  @Len int  select  @O_iErrorState  = 0,  @Loop = 0,  @Len = 0  if @I_vMETHOD is NULL or  @I_vCHARACTERS is NULL begin  select @O_iErrorState = 7790    return (@O_iErrorState) end  if @I_vMETHOD = 1    begin  select @Len = len(@I_vCHARACTERS)  WHILE @Loop < @Len  begin  select @Loop = @Loop + 1  if upper(substring(@I_vCHARACTERS,@Loop,1)) NOT IN  ( '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H',  'I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',' ' )  begin  select @O_iErrorState = 7791    break  end  end end  return (@O_iErrorState)   
GO
GRANT EXECUTE ON  [dbo].[taValidateString] TO [DYNGRP]
GO
