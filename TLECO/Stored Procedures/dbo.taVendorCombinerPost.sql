SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taVendorCombinerPost] /* ********************************************************************************************************** * (c) 2001 Microsoft Great Plains, Inc. ********************************************************************************************************** * * PROCEDURE NAME:	taVendorCombinerPost * * * DATABASE: *              Company * * * RETURN VALUE: * *	0 = Successful *	non-0 = Not successful * * REVISION HISTORY: * *	Date		Who		Comments *	---------	--------	------------------------------------------------------------------- * *********************************************************************************************************** */ @I_charStartVendor 	char(30), @I_charEndVendor 	char(30), @cStartVendor		char(50), @cEndVendor		char(50), @O_iErrorState 		int output as select @O_iErrorState = 0 /* Create Custom Business Logic */ /* End Create Custom Business Logic */ return 
GO
GRANT EXECUTE ON  [dbo].[taVendorCombinerPost] TO [DYNGRP]
GO
