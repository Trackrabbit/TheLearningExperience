SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taCustomerModifierPre] /* ********************************************************************************************************** * (c) 2001 Microsoft Great Plains, Inc. ********************************************************************************************************** * * PROCEDURE NAME:	taCustomerModifierPre * * * DATABASE: *              Company * * * RETURN VALUE: * *	0 = Successful *	non-0 = Not successful * * REVISION HISTORY: * *	Date		Who		Comments *	---------	--------	------------------------------------------------------------------- * *********************************************************************************************************** */ @I_charStartCustomer 	char(30) output, @I_charEndCustomer 	char(30) output, @cStartCustomer 	char(50) output, @cEndCustomer		char(50) output, @O_iErrorState 		int output as select @O_iErrorState = 0 /* Create Custom Business Logic */ /* End Create Custom Business Logic */ return 
GO
GRANT EXECUTE ON  [dbo].[taCustomerModifierPre] TO [DYNGRP]
GO
