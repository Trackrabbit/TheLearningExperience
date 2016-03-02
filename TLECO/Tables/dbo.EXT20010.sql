CREATE TABLE [dbo].[EXT20010]
(
[Field_ID] [int] NOT NULL,
[FIELDNAM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FIELDTYPE] [int] NOT NULL,
[Lookup_Number] [int] NOT NULL,
[Link_Number] [smallint] NOT NULL,
[Required_Field] [tinyint] NOT NULL,
[Hide_Field] [tinyint] NOT NULL,
[Extender_List_ID] [int] NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[String_Format] [smallint] NOT NULL,
[String_Mask] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Use_Mask] [tinyint] NOT NULL,
[Max_Characters] [smallint] NOT NULL,
[Sort_List_CB] [tinyint] NOT NULL,
[Calculated_Field_Type] [smallint] NOT NULL,
[Extender_Form_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20010] ADD CONSTRAINT [PKEXT20010] PRIMARY KEY NONCLUSTERED  ([Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20010].[FIELDNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[FIELDTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Lookup_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Link_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Required_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Hide_Field]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Extender_List_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[String_Format]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20010].[String_Mask]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Use_Mask]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Max_Characters]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Sort_List_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20010].[Calculated_Field_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20010].[Extender_Form_ID]'
GO
GRANT SELECT ON  [dbo].[EXT20010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20010] TO [DYNGRP]
GO
