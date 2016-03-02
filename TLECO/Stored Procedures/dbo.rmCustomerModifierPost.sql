SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[rmCustomerModifierPost] @I_charStartCustomer  char(30), @I_charEndCustomer  char(30), @cStartCustomer  char(50), @cEndCustomer char(50), @O_iErrorState   int output  as select @O_iErrorState = 0  return   
GO
GRANT EXECUTE ON  [dbo].[rmCustomerModifierPost] TO [DYNGRP]
GO
