SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[uprEmployeeModifierPost] @I_charStartEmployee  char(30), @I_charEndEmployee  char(30), @cStartEmployee  char(50), @cEndEmployee char(50), @O_iErrorState   int output  as select @O_iErrorState = 0  return   
GO
GRANT EXECUTE ON  [dbo].[uprEmployeeModifierPost] TO [DYNGRP]
GO
