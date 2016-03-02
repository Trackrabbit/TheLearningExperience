SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetConstantFloat]  @I_cConstantName        char(255) = NULL,  @O_fConstantValue       float = NULL output,  @O_iErrorState          int = NULL output as  if @I_cConstantName is NULL begin  select @O_iErrorState = 20266  return end  select @O_iErrorState = 0  select  @O_fConstantValue = CONVERT(float,Value) from  CONSTANTS where  Name = @I_cConstantName  if @@rowcount <> 1 begin  select @O_iErrorState = 20065 end  return    
GO
GRANT EXECUTE ON  [dbo].[smGetConstantFloat] TO [DYNGRP]
GO
