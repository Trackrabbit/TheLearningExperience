SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ExtenderGetWindowDetailFields]
	@windowId char(15)
as
	select 
		e.Extender_Window_ID, e.Extender_Key_Fields_1, e.Extender_Key_Fields_2, e.Extender_Key_Fields_3, e.Extender_Key_Fields_4, e.Extender_Key_Fields_5,
		isnull(f1.FIELDNAM,'') as 'Extender_Fields_IDs_1', isnull(f2.FIELDNAM,'') as 'Extender_Fields_IDs_2', isnull(f3.FIELDNAM,'') as 'Extender_Fields_IDs_3',
		isnull(f4.FIELDNAM,'') as 'Extender_Fields_IDs_4', isnull(f5.FIELDNAM,'') as 'Extender_Fields_IDs_5', isnull(f6.FIELDNAM,'') as 'Extender_Fields_IDs_6',
		isnull(f7.FIELDNAM,'') as 'Extender_Fields_IDs_7', isnull(f8.FIELDNAM,'') as 'Extender_Fields_IDs_8', isnull(f9.FIELDNAM,'') as 'Extender_Fields_IDs_9',
		isnull(f10.FIELDNAM,'') as 'Extender_Fields_IDs_10',
		isnull(f21.FIELDNAM,'') as 'Extender_Fields_IDs_2_1', isnull(f22.FIELDNAM,'') as 'Extender_Fields_IDs_2_2', isnull(f23.FIELDNAM,'') as 'Extender_Fields_IDs_2_3',
		isnull(f24.FIELDNAM,'') as 'Extender_Fields_IDs_2_4', isnull(f25.FIELDNAM,'') as 'Extender_Fields_IDs_2_5', isnull(f26.FIELDNAM,'') as 'Extender_Fields_IDs_2_6',
		isnull(f27.FIELDNAM,'') as 'Extender_Fields_IDs_2_7', isnull(f28.FIELDNAM,'') as 'Extender_Fields_IDs_2_8', isnull(f29.FIELDNAM,'') as 'Extender_Fields_IDs_2_9',
		isnull(f210.FIELDNAM,'') as 'Extender_Fields_IDs_2_10',
		f1.FIELDTYPE as 'TYPE_1', f2.FIELDTYPE as 'TYPE_2', f3.FIELDTYPE as 'TYPE_3', f4.FIELDTYPE as 'TYPE_4', f5.FIELDTYPE as 'TYPE_5', f6.FIELDTYPE as 'TYPE_6',
		f7.FIELDTYPE as 'TYPE_7', f8.FIELDTYPE as 'TYPE_8', f9.FIELDTYPE as 'TYPE_9', f10.FIELDTYPE as 'TYPE_10',
		f21.FIELDTYPE as 'TYPE_2_1', f22.FIELDTYPE as 'TYPE_2_2', f23.FIELDTYPE as 'TYPE_2_3', f24.FIELDTYPE as 'TYPE_2_4', f25.FIELDTYPE as 'TYPE_2_5', f26.FIELDTYPE as 'TYPE_2_6',
		f27.FIELDTYPE as 'TYPE_2_7', f28.FIELDTYPE as 'TYPE_2_8', f29.FIELDTYPE as 'TYPE_2_9', f210.FIELDTYPE as 'TYPE_2_10'
	from EXT20100 e
		left join EXT20010 f1 on f1.Field_ID = Detail_Field_IDs_1
		left join EXT20010 f2 on f2.Field_ID = Detail_Field_IDs_2
		left join EXT20010 f3 on f3.Field_ID = Detail_Field_IDs_3
		left join EXT20010 f4 on f4.Field_ID = Detail_Field_IDs_4
		left join EXT20010 f5 on f5.Field_ID = Detail_Field_IDs_5
		left join EXT20010 f6 on f6.Field_ID = Detail_Field_IDs_6
		left join EXT20010 f7 on f7.Field_ID = Detail_Field_IDs_7
		left join EXT20010 f8 on f8.Field_ID = Detail_Field_IDs_8
		left join EXT20010 f9 on f9.Field_ID = Detail_Field_IDs_9
		left join EXT20010 f10 on f10.Field_ID = Detail_Field_IDs_10
		left join EXT20010 f21 on f21.Field_ID = Detail_Field_IDs_2_1
		left join EXT20010 f22 on f22.Field_ID = Detail_Field_IDs_2_2
		left join EXT20010 f23 on f23.Field_ID = Detail_Field_IDs_2_3
		left join EXT20010 f24 on f24.Field_ID = Detail_Field_IDs_2_4
		left join EXT20010 f25 on f25.Field_ID = Detail_Field_IDs_2_5
		left join EXT20010 f26 on f26.Field_ID = Detail_Field_IDs_2_6
		left join EXT20010 f27 on f27.Field_ID = Detail_Field_IDs_2_7
		left join EXT20010 f28 on f28.Field_ID = Detail_Field_IDs_2_8
		left join EXT20010 f29 on f29.Field_ID = Detail_Field_IDs_2_9
		left join EXT20010 f210 on f210.Field_ID = Detail_Field_IDs_2_10
	where
		Extender_Window_ID = @windowId
GO
GRANT EXECUTE ON  [dbo].[ExtenderGetWindowDetailFields] TO [DYNGRP]
GO
