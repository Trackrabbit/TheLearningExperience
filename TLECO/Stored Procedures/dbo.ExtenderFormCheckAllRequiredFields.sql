SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderFormCheckAllRequiredFields]  
	@I_vFormID  char(15),    
	@I_vField_Value_Col_1_Row_1 char(255),
	@I_vField_Value_Col_1_Row_2 char(255),
	@I_vField_Value_Col_1_Row_3 char(255),
	@I_vField_Value_Col_1_Row_4 char(255),
	@I_vField_Value_Col_1_Row_5 char(255),
	@I_vField_Value_Col_1_Row_6 char(255),
	@I_vField_Value_Col_1_Row_7 char(255),
	@I_vField_Value_Col_1_Row_8 char(255),
	@I_vField_Value_Col_1_Row_9 char(255),
	@I_vField_Value_Col_1_Row_10 char(255),
	@I_vField_Value_Col_1_Row_11 char(255),
	@I_vField_Value_Col_1_Row_12 char(255),
	@I_vField_Value_Col_1_Row_13 char(255),	
	@I_vField_Value_Col_1_Row_14 char(255),
	@I_vField_Value_Col_1_Row_15 char(255),
	@I_vField_Value_Col_2_Row_1 char(255),
	@I_vField_Value_Col_2_Row_2 char(255),
	@I_vField_Value_Col_2_Row_3 char(255),
	@I_vField_Value_Col_2_Row_4 char(255),
	@I_vField_Value_Col_2_Row_5 char(255),
	@I_vField_Value_Col_2_Row_6 char(255),
	@I_vField_Value_Col_2_Row_7 char(255),
	@I_vField_Value_Col_2_Row_8 char(255),
	@I_vField_Value_Col_2_Row_9 char(255),
	@I_vField_Value_Col_2_Row_10 char(255),
	@I_vField_Value_Col_2_Row_11 char(255),
	@I_vField_Value_Col_2_Row_12 char(255),
	@I_vField_Value_Col_2_Row_13 char(255),
	@I_vField_Value_Col_2_Row_14 char(255),
	@I_vField_Value_Col_2_Row_15 char(255),
	@O_iRequiredState int output
as

declare @FieldID int
declare @MissingField int

set nocount on

select @O_iRequiredState = 0

if @I_vField_Value_Col_1_Row_1 = '' 
	begin
		select @FieldID = Extender_Field_IDs_1 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_2 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_3 = '' 
	begin
		select @FieldID = Extender_Field_IDs_3 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_4 = '' 
	begin
		select @FieldID = Extender_Field_IDs_4 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_5 = '' 
	begin
		select @FieldID = Extender_Field_IDs_5 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_6 = '' 
	begin
		select @FieldID = Extender_Field_IDs_6 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_7 = '' 
	begin
		select @FieldID = Extender_Field_IDs_7 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_8 = '' 
	begin
		select @FieldID = Extender_Field_IDs_8 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_9 = '' 
	begin
		select @FieldID = Extender_Field_IDs_9 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_10 = '' 
	begin
		select @FieldID = Extender_Field_IDs_10 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_11 = '' 
	begin
		select @FieldID = Extender_Field_IDs_11 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_12 = '' 
	begin
		select @FieldID = Extender_Field_IDs_12 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_13 = '' 
	begin
		select @FieldID = Extender_Field_IDs_13 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_14 = '' 
	begin
		select @FieldID = Extender_Field_IDs_14 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_1_Row_15 = '' 
	begin
		select @FieldID = Extender_Field_IDs_15 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_1 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_1 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_2 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_2 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_3 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_3 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_4 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_4 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_5 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_5 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_6 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_6 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_7 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_7 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_8 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_8 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_9 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_9 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_10 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_10 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_11 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_11 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_12 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_12 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_13 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_13 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_14 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_14 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

if @I_vField_Value_Col_2_Row_15 = '' 
	begin
		select @FieldID = Extender_Field_IDs_2_15 from EXT20200 where Extender_Form_ID = @I_vFormID
		exec ExtenderCheckRequiredField @FieldID, @MissingField output
		if @MissingField = 1 
			select @O_iRequiredState = 1
	end

return (@O_iRequiredState)
GO
GRANT EXECUTE ON  [dbo].[ExtenderFormCheckAllRequiredFields] TO [DYNGRP]
GO
