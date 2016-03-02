SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderCheckRequiredField]  
	@I_vFieldID  int,    
	@O_iMissingField int output
as

declare @TemplateField int

set nocount on

if @I_vFieldID <> 0
begin
	select @O_iMissingField = Required_Field from EXT20010 where Field_ID = @I_vFieldID
end

return (@O_iMissingField)
GO
GRANT EXECUTE ON  [dbo].[ExtenderCheckRequiredField] TO [DYNGRP]
GO
