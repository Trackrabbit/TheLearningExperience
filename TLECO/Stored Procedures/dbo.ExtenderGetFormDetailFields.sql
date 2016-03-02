SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[ExtenderGetFormDetailFields]
	@formId char(15)
as
	select 
		f.Extender_Form_ID_Prompt, f.Lookup_Number, f.Autoincrement, f.Extender_Second_Prompt, f.Extender_Form_ID,
		isnull(f1.FIELDNAM,'') as 'Detail_Field_IDs_1', isnull(f2.FIELDNAM,'') as 'Detail_Field_IDs_2', isnull(f3.FIELDNAM,'') as 'Detail_Field_IDs_3',
		isnull(f4.FIELDNAM,'') as 'Detail_Field_IDs_4', isnull(f5.FIELDNAM,'') as 'Detail_Field_IDs_5',
		isnull(f21.FIELDNAM,'') as 'Detail_Field_IDs_2_1', isnull(f22.FIELDNAM,'') as 'Detail_Field_IDs_2_2', isnull(f23.FIELDNAM,'') as 'Detail_Field_IDs_2_3',
		isnull(f24.FIELDNAM,'') as 'Detail_Field_IDs_2_4', isnull(f25.FIELDNAM,'') as 'Detail_Field_IDs_2_5',
		isnull(f1.FIELDTYPE,'') as 'Type_1', isnull(f2.FIELDTYPE,'') as 'Type_2', isnull(f3.FIELDTYPE,'') as 'Type_3', isnull(f4.FIELDTYPE,'') as 'Type_4', 
		isnull(f5.FIELDTYPE,'') as 'Type_5',  
		isnull(f21.FIELDTYPE,'') as 'Type_2_1', isnull(f22.FIELDTYPE,'') as 'Type_2_2', isnull(f23.FIELDTYPE,'') as 'Type_2_3', isnull(f24.FIELDTYPE,'') as 'Type_2_4', 
		isnull(f25.FIELDTYPE,'') as 'Type_2_5'
	from
		EXT20200 f
			left join EXT20010 f1 on f1.Field_ID = f.Detail_Field_IDs_1 
			left join EXT20010 f2 on f2.Field_ID = f.Detail_Field_IDs_2 
			left join EXT20010 f3 on f3.Field_ID = f.Detail_Field_IDs_3 
			left join EXT20010 f4 on f4.Field_ID = f.Detail_Field_IDs_4
			left join EXT20010 f5 on f5.Field_ID = f.Detail_Field_IDs_5 
			left join EXT20010 f21 on f21.Field_ID = f.Detail_Field_IDs_2_1 
			left join EXT20010 f22 on f22.Field_ID = f.Detail_Field_IDs_2_2 
			left join EXT20010 f23 on f23.Field_ID = f.Detail_Field_IDs_2_3 
			left join EXT20010 f24 on f24.Field_ID = f.Detail_Field_IDs_2_4 
			left join EXT20010 f25 on f25.Field_ID = f.Detail_Field_IDs_2_5 
	where
		f.Extender_Form_ID = @formId
	


GO
GRANT EXECUTE ON  [dbo].[ExtenderGetFormDetailFields] TO [DYNGRP]
GO
