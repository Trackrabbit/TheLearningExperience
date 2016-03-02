SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[ExtenderGetFormExtraWindowFields]
	@formId char(15),
	@windowId char(21)
as
	select 
		e.Extender_Form_ID, e.Window_Number, e.Extra_Window_Type, e.WINNAME, e.Button_Prompts_1, f.Extender_Form_ID_Prompt, f.Extender_Second_Prompt,
		isnull(f1.FIELDNAM,'') as 'Extender_Field_IDs_1', isnull(f2.FIELDNAM,'') as 'Extender_Field_IDs_2', isnull(f3.FIELDNAM,'') as 'Extender_Field_IDs_3',
		isnull(f4.FIELDNAM,'') as 'Extender_Field_IDs_4', isnull(f5.FIELDNAM,'') as 'Extender_Field_IDs_5', isnull(f6.FIELDNAM,'') as 'Extender_Field_IDs_6',
		isnull(f7.FIELDNAM,'') as 'Extender_Field_IDs_7', isnull(f8.FIELDNAM,'') as 'Extender_Field_IDs_8', isnull(f9.FIELDNAM,'') as 'Extender_Field_IDs_9',
		isnull(f10.FIELDNAM,'') as 'Extender_Field_IDs_10', isnull(f11.FIELDNAM,'') as 'Extender_Field_IDs_11', isnull(f12.FIELDNAM,'') as 'Extender_Field_IDs_12',
		isnull(f13.FIELDNAM,'') as 'Extender_Field_IDs_13', isnull(f14.FIELDNAM,'') as 'Extender_Field_IDs_14', isnull(f15.FIELDNAM,'') as 'Extender_Field_IDs_15',
		isnull(f1.FIELDTYPE,'') as 'Type_1', isnull(f2.FIELDTYPE,'') as 'Type_2', isnull(f3.FIELDTYPE,'') as 'Type_3', isnull(f4.FIELDTYPE,'') as 'Type_4',
		isnull(f5.FIELDTYPE,'') as 'Type_5', isnull(f6.FIELDTYPE,'') as 'Type_6', isnull(f7.FIELDTYPE,'') as 'Type_7', isnull(f8.FIELDTYPE,'') as 'Type_8',
		isnull(f9.FIELDTYPE,'') as 'Type_9', isnull(f10.FIELDTYPE,'') as 'Type_10', isnull(f11.FIELDTYPE,'') as 'Type_11', isnull(f12.FIELDTYPE,'') as 'Type_12',
		isnull(f13.FIELDTYPE,'') as 'Type_13', isnull(f14.FIELDTYPE,'') as 'Type_14', isnull(f15.FIELDTYPE,'') as 'Type_15'
	from 
		EXT20201 e
			left join EXT20010 f1 on f1.Field_ID = e.Extender_Field_IDs_1
			left join EXT20010 f2 on f2.Field_ID = e.Extender_Field_IDs_2
			left join EXT20010 f3 on f3.Field_ID = e.Extender_Field_IDs_3
			left join EXT20010 f4 on f4.Field_ID = e.Extender_Field_IDs_4
			left join EXT20010 f5 on f5.Field_ID = e.Extender_Field_IDs_5
			left join EXT20010 f6 on f6.Field_ID = e.Extender_Field_IDs_6
			left join EXT20010 f7 on f7.Field_ID = e.Extender_Field_IDs_7
			left join EXT20010 f8 on f8.Field_ID = e.Extender_Field_IDs_8
			left join EXT20010 f9 on f9.Field_ID = e.Extender_Field_IDs_9
			left join EXT20010 f10 on f10.Field_ID = e.Extender_Field_IDs_10
			left join EXT20010 f11 on f11.Field_ID = e.Extender_Field_IDs_11
			left join EXT20010 f12 on f12.Field_ID = e.Extender_Field_IDs_12
			left join EXT20010 f13 on f13.Field_ID = e.Extender_Field_IDs_13
			left join EXT20010 f14 on f14.Field_ID = e.Extender_Field_IDs_14
			left join EXT20010 f15 on f15.Field_ID = e.Extender_Field_IDs_15
			inner join EXT20200 f on e.Extender_Form_ID = f.Extender_Form_ID
	where
		e.Extender_Form_ID = @formId and e.Button_Prompts_1 = @windowId 

GO
GRANT EXECUTE ON  [dbo].[ExtenderGetFormExtraWindowFields] TO [DYNGRP]
GO
