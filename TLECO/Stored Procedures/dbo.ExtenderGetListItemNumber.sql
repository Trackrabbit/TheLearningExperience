SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderGetListItemNumber]   
	@I_vFieldID  int,	
	@I_vStringValue char(255),
	@O_vListItem int output
as

declare @ListID int

select @ListID = Extender_List_ID from EXT20010 where Field_ID = @I_vFieldID
if exists(select Extender_List_Item_ID from EXT20021 where Extender_List_ID = @ListID and STRNG132 = @I_vStringValue)
	begin
		select @O_vListItem = Extender_List_Item_ID from EXT20021 where Extender_List_ID = @ListID and STRNG132 = @I_vStringValue
	end
else
	begin
		select @O_vListItem = 0
	end
GO
GRANT EXECUTE ON  [dbo].[ExtenderGetListItemNumber] TO [DYNGRP]
GO
