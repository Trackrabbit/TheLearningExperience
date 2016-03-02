SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetConstantInt]  @I_cConstantName        char(255) = NULL,  @O_iConstantValue       int = NULL      output,  @O_iErrorState          int = NULL      output as  if @I_cConstantName is NULL begin  select @O_iErrorState = 20271  return end  select @O_iErrorState = 0  select  @O_iConstantValue = CONVERT(int,Value) from  CONSTANTS where  Name = @I_cConstantName  if @@rowcount <> 1 begin  select @O_iErrorState = 20063 end  return    
GO
GRANT EXECUTE ON  [dbo].[smGetConstantInt] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[smGetConstantInt] TO [rpt_all user]
GO
