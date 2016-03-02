SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetConstantString]  @I_cConstantName        char(255) = NULL,  @O_cConstantValue       char(255) = NULL        output,  @O_iErrorState          int             = NULL  output as  if @I_cConstantName is NULL begin  select @O_iErrorState = 20269  return end  select @O_iErrorState = 0  select  @O_cConstantValue = Value from  CONSTANTS where  Name = @I_cConstantName  if @@rowcount <> 1 begin  select @O_iErrorState = 20064 end  return    
GO
GRANT EXECUTE ON  [dbo].[smGetConstantString] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[smGetConstantString] TO [rpt_all user]
GO
