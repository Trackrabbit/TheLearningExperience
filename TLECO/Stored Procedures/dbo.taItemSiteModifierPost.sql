SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[taItemSiteModifierPost] /* ********************************************************************************************************** * (c) 2001 Microsoft Great Plains, Inc. ********************************************************************************************************** * * PROCEDURE NAME:	taItemSiteModifierPost * * * DATABASE: *              Company * * * RETURN VALUE: * *	0 = Successful *	non-0 = Not successful * * REVISION HISTORY: * *	Date		Who		Comments *	---------	--------	------------------------------------------------------------------- * *********************************************************************************************************** */ @I_charStartSite	char(30), @I_charEndSite		char(30), @cStartSite		char(50), @cEndSite		char(50), @O_iErrorState 		int output as select @O_iErrorState = 0 /* Create Custom Business Logic */ /* End Create Custom Business Logic */ return 
GO
GRANT EXECUTE ON  [dbo].[taItemSiteModifierPost] TO [DYNGRP]
GO
