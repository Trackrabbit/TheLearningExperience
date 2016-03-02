SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderGetFormFields]
	@formId char(15)
as
	select 
		f.Extender_Form_ID_Prompt, f.Lookup_Number, f.Autoincrement, f.Extender_Description_Pro, f.Extender_Second_Prompt, f.Description_Field_Req,
		isnull(f1.FIELDNAM,'') as 'Extender_Field_IDs_1', isnull(f2.FIELDNAM,'') as 'Extender_Field_IDs_2', isnull(f3.FIELDNAM,'') as 'Extender_Field_IDs_3', 
		isnull(f4.FIELDNAM,'') as 'Extender_Field_IDs_4', isnull(f5.FIELDNAM,'') as 'Extender_Field_IDs_5', isnull(f6.FIELDNAM,'') as 'Extender_Field_IDs_6', 
		isnull(f7.FIELDNAM,'') as 'Extender_Field_IDs_7', isnull(f8.FIELDNAM,'') as 'Extender_Field_IDs_8', isnull(f9.FIELDNAM,'') as 'Extender_Field_IDs_9', 
		isnull(f10.FIELDNAM,'') as 'Extender_Field_IDs_10', isnull(f11.FIELDNAM,'') as 'Extender_Field_IDs_11', isnull(f12.FIELDNAM,'') as 'Extender_Field_IDs_12', 
		isnull(f13.FIELDNAM,'') as 'Extender_Field_IDs_13', isnull(f14.FIELDNAM,'') as 'Extender_Field_IDs_14', isnull(f15.FIELDNAM,'') as 'Extender_Field_IDs_15',
		isnull(f21.FIELDNAM,'') as 'Extender_Field_IDs_2_1', isnull(f22.FIELDNAM,'') as 'Extender_Field_IDs_2_2', isnull(f23.FIELDNAM,'') as 'Extender_Field_IDs_2_3', 
		isnull(f24.FIELDNAM,'') as 'Extender_Field_IDs_2_4', isnull(f25.FIELDNAM,'') as 'Extender_Field_IDs_2_5', isnull(f26.FIELDNAM,'') as 'Extender_Field_IDs_2_6', 
		isnull(f27.FIELDNAM,'') as 'Extender_Field_IDs_2_7', isnull(f28.FIELDNAM,'') as 'Extender_Field_IDs_2_8', isnull(f29.FIELDNAM,'') as 'Extender_Field_IDs_2_9', 
		isnull(f210.FIELDNAM,'') as 'Extender_Field_IDs_2_10', isnull(f211.FIELDNAM,'') as 'Extender_Field_IDs_2_11', isnull(f212.FIELDNAM,'') as 'Extender_Field_IDs_2_12', 
		isnull(f213.FIELDNAM,'') as 'Extender_Field_IDs_2_13', isnull(f214.FIELDNAM,'') as 'Extender_Field_IDs_2_14', isnull(f215.FIELDNAM,'') as 'Extender_Field_IDs_2_15',
		f1.FIELDTYPE as 'Type_1', f2.FIELDTYPE as 'Type_2', f3.FIELDTYPE as 'Type_3', f4.FIELDTYPE as 'Type_4', f5.FIELDTYPE as 'Type_5', 
		f6.FIELDTYPE as 'Type_6', f7.FIELDTYPE as 'Type_7', f8.FIELDTYPE as 'Type_8', f9.FIELDTYPE as 'Type_9', f10.FIELDTYPE as 'Type_10',
		f11.FIELDTYPE as 'Type_11', f12.FIELDTYPE as 'Type_12', f13.FIELDTYPE as 'Type_13', f14.FIELDTYPE as 'Type_14', f15.FIELDTYPE as 'Type_15',  
		f21.FIELDTYPE as 'Type_2_1', f22.FIELDTYPE as 'Type_2_2', f23.FIELDTYPE as 'Type_2_3', f24.FIELDTYPE as 'Type_2_4', f25.FIELDTYPE as 'Type_2_5', 
		f26.FIELDTYPE as 'Type_2_6', f27.FIELDTYPE as 'Type_2_7', f28.FIELDTYPE as 'Type_2_8', f29.FIELDTYPE as 'Type_2_9', f210.FIELDTYPE as 'Type_2_10',
		f211.FIELDTYPE as 'Type_2_11', f212.FIELDTYPE as 'Type_2_12', f213.FIELDTYPE as 'Type_2_13', f214.FIELDTYPE as 'Type_2_14', f215.FIELDTYPE as 'Type_2_15'
	from 
		EXT20200 f
		  left join EXT20010 f1 on f1.Field_ID = Extender_Field_IDs_1
		  left join EXT20010 f2 on f2.Field_ID = Extender_Field_IDs_2
		  left join EXT20010 f3 on f3.Field_ID = Extender_Field_IDs_3
		  left join EXT20010 f4 on f4.Field_ID = Extender_Field_IDs_4
		  left join EXT20010 f5 on f5.Field_ID = Extender_Field_IDs_5
		  left join EXT20010 f6 on f6.Field_ID = Extender_Field_IDs_6
		  left join EXT20010 f7 on f7.Field_ID = Extender_Field_IDs_7
		  left join EXT20010 f8 on f8.Field_ID = Extender_Field_IDs_8
		  left join EXT20010 f9 on f9.Field_ID = Extender_Field_IDs_9
		  left join EXT20010 f10 on f10.Field_ID = Extender_Field_IDs_10
		  left join EXT20010 f11 on f11.Field_ID = Extender_Field_IDs_11
		  left join EXT20010 f12 on f12.Field_ID = Extender_Field_IDs_12
		  left join EXT20010 f13 on f13.Field_ID = Extender_Field_IDs_13
		  left join EXT20010 f14 on f14.Field_ID = Extender_Field_IDs_14
		  left join EXT20010 f15 on f15.Field_ID = Extender_Field_IDs_15
		  left join EXT20010 f21 on f21.Field_ID = Extender_Field_IDs_2_1
		  left join EXT20010 f22 on f22.Field_ID = Extender_Field_IDs_2_2
		  left join EXT20010 f23 on f23.Field_ID = Extender_Field_IDs_2_3
		  left join EXT20010 f24 on f24.Field_ID = Extender_Field_IDs_2_4
		  left join EXT20010 f25 on f25.Field_ID = Extender_Field_IDs_2_5
		  left join EXT20010 f26 on f26.Field_ID = Extender_Field_IDs_2_6
		  left join EXT20010 f27 on f27.Field_ID = Extender_Field_IDs_2_7
		  left join EXT20010 f28 on f28.Field_ID = Extender_Field_IDs_2_8
		  left join EXT20010 f29 on f29.Field_ID = Extender_Field_IDs_2_9
		  left join EXT20010 f210 on f210.Field_ID = Extender_Field_IDs_2_10
		  left join EXT20010 f211 on f211.Field_ID = Extender_Field_IDs_2_11
		  left join EXT20010 f212 on f212.Field_ID = Extender_Field_IDs_2_12
		  left join EXT20010 f213 on f213.Field_ID = Extender_Field_IDs_2_13
		  left join EXT20010 f214 on f214.Field_ID = Extender_Field_IDs_2_14
		  left join EXT20010 f215 on f215.Field_ID = Extender_Field_IDs_2_15
	where
		f.Extender_Form_ID = @formId



GO
GRANT EXECUTE ON  [dbo].[ExtenderGetFormFields] TO [DYNGRP]
GO
