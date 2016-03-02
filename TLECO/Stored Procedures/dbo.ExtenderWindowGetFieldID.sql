SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderWindowGetFieldID]  
	@I_vWindowID  char(15), 
	@I_vRecordType int,
	@I_vWindowNumber int,
	@I_vFieldNumber int,
	@O_vFieldID int output
as

declare @FieldID int

select @FieldID = 0

if @I_vRecordType = 0 
	begin
		select @FieldID = case 
			when @I_vFieldNumber = 1  then Extender_Field_IDs_1
			when @I_vFieldNumber = 2  then Extender_Field_IDs_2
			when @I_vFieldNumber = 3  then Extender_Field_IDs_3
			when @I_vFieldNumber = 4  then Extender_Field_IDs_4
			when @I_vFieldNumber = 5  then Extender_Field_IDs_5
			when @I_vFieldNumber = 6  then Extender_Field_IDs_6
			when @I_vFieldNumber = 7  then Extender_Field_IDs_7
			when @I_vFieldNumber = 8  then Extender_Field_IDs_8
			when @I_vFieldNumber = 9  then Extender_Field_IDs_9
			when @I_vFieldNumber = 10 then Extender_Field_IDs_10
			when @I_vFieldNumber = 11 then Extender_Field_IDs_11
			when @I_vFieldNumber = 12 then Extender_Field_IDs_12
			when @I_vFieldNumber = 13 then Extender_Field_IDs_13
			when @I_vFieldNumber = 14 then Extender_Field_IDs_14
			when @I_vFieldNumber = 15 then Extender_Field_IDs_15
			end
		from EXT20100 where Extender_Window_ID = @I_vWindowID 
	end
else
	begin
		select @FieldID = case 
			when @I_vWindowNumber = 1 and @I_vFieldNumber = 1  then Detail_Field_IDs_1
			when @I_vWindowNumber = 1 and @I_vFieldNumber = 2  then Detail_Field_IDs_2
			when @I_vWindowNumber = 1 and @I_vFieldNumber = 3  then Detail_Field_IDs_3
			when @I_vWindowNumber = 1 and @I_vFieldNumber = 4  then Detail_Field_IDs_4
			when @I_vWindowNumber = 1 and @I_vFieldNumber = 5  then Detail_Field_IDs_5
			when @I_vWindowNumber = 2 and @I_vFieldNumber = 1  then Detail_Field_IDs_2_1
			when @I_vWindowNumber = 2 and @I_vFieldNumber = 2  then Detail_Field_IDs_2_2
			when @I_vWindowNumber = 2 and @I_vFieldNumber = 3  then Detail_Field_IDs_2_3
			when @I_vWindowNumber = 2 and @I_vFieldNumber = 4  then Detail_Field_IDs_2_4
			when @I_vWindowNumber = 2 and @I_vFieldNumber = 5  then Detail_Field_IDs_2_5
			end
		from EXT20100 where Extender_Window_ID = @I_vWindowID 
	end

select @O_vFieldID = @FieldID
return (@O_vFieldID)
GO
GRANT EXECUTE ON  [dbo].[ExtenderWindowGetFieldID] TO [DYNGRP]
GO
