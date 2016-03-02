SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taEmployeeModifierPre] /* ********************************************************************************************************** * (c) 2001 Microsoft Great Plains, Inc. ********************************************************************************************************** * * PROCEDURE NAME:	taEmployeeModifierPre * * * DATABASE: *              Company * * * RETURN VALUE: * *	0 = Successful *	non-0 = Not successful * * REVISION HISTORY: * *	Date		Who		Comments *	---------	--------	------------------------------------------------------------------- * *********************************************************************************************************** */ @I_charStartEmployee 	char(30) output, @I_charEndEmployee 	char(30) output, @cStartEmployee 	char(50) output, @cEndEmployee		char(50) output, @O_iErrorState 		int output as select @O_iErrorState = 0 /* Create Custom Business Logic */ /* End Create Custom Business Logic */  return 
GO
GRANT EXECUTE ON  [dbo].[taEmployeeModifierPre] TO [DYNGRP]
GO
