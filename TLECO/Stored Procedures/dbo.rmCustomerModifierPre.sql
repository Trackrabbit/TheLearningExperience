SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmCustomerModifierPre] @I_charStartCustomer  char(30) output, @I_charEndCustomer  char(30) output, @cStartCustomer  char(50) output, @cEndCustomer char(50) output, @O_iErrorState   int output  as select @O_iErrorState = 0  return   
GO
GRANT EXECUTE ON  [dbo].[rmCustomerModifierPre] TO [DYNGRP]
GO
