SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderGetWindowFields]
	@windowId char(15)
as
	select 
		Extender_Key_Fields_1, Extender_Key_Fields_2, Extender_Key_Fields_3, Extender_Key_Fields_4, Extender_Key_Fields_5,
		isnull(f1.FIELDNAM,'') as 'Extender_Fields_IDs_1', isnull(f2.FIELDNAM,'') as 'Extender_Fields_IDs_2', isnull(f3.FIELDNAM,'') as 'Extender_Fields_IDs_3',
		isnull(f4.FIELDNAM,'') as 'Extender_Fields_IDs_4', isnull(f5.FIELDNAM,'') as 'Extender_Fields_IDs_5', isnull(f6.FIELDNAM,'') as 'Extender_Fields_IDs_6',
		isnull(f7.FIELDNAM,'') as 'Extender_Fields_IDs_7', isnull(f8.FIELDNAM,'') as 'Extender_Fields_IDs_8', isnull(f9.FIELDNAM,'') as 'Extender_Fields_IDs_9',
		isnull(f10.FIELDNAM,'') as 'Extender_Fields_IDs_10', isnull(f11.FIELDNAM,'') as 'Extender_Fields_IDs_11', isnull(f12.FIELDNAM,'') as 'Extender_Fields_IDs_12',
		isnull(f13.FIELDNAM,'') as 'Extender_Fields_IDs_13', isnull(f14.FIELDNAM,'') as 'Extender_Fields_IDs_14', isnull(f15.FIELDNAM,'') as 'Extender_Fields_IDs_15',
		f1.FIELDTYPE as 'TYPE_1', f2.FIELDTYPE as 'TYPE_2', f3.FIELDTYPE as 'TYPE_3', f4.FIELDTYPE as 'TYPE_4', f5.FIELDTYPE as 'TYPE_5', f6.FIELDTYPE as 'TYPE_6',
		f7.FIELDTYPE as 'TYPE_7', f8.FIELDTYPE as 'TYPE_8', f9.FIELDTYPE as 'TYPE_9', f10.FIELDTYPE as 'TYPE_10', f11.FIELDTYPE as 'TYPE_11', f6.FIELDTYPE as 'TYPE_12',
		f13.FIELDTYPE as 'TYPE_13', f14.FIELDTYPE as 'TYPE_14', f15.FIELDTYPE as 'TYPE_15'
	from EXT20100
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
	where
		Extender_Window_ID = @windowId
GO
GRANT EXECUTE ON  [dbo].[ExtenderGetWindowFields] TO [DYNGRP]
GO
