SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[uprEmployeeModifierPre] @I_charStartEmployee  char(30) output, @I_charEndEmployee  char(30) output, @cStartEmployee  char(50) output, @cEndEmployee char(50) output, @O_iErrorState   int output  as select @O_iErrorState = 0  return   
GO
GRANT EXECUTE ON  [dbo].[uprEmployeeModifierPre] TO [DYNGRP]
GO
