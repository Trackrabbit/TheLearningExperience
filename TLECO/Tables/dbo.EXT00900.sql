CREATE TABLE [dbo].[EXT00900]
(
[Extender_Lookup_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STR30] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UD_Form_Field_Desc] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT00900] ADD CONSTRAINT [PKEXT00900] PRIMARY KEY NONCLUSTERED  ([Extender_Lookup_ID], [STR30]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT00900] ON [dbo].[EXT00900] ([Extender_Lookup_ID], [UD_Form_Field_Desc], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT00900].[Extender_Lookup_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT00900].[STR30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT00900].[UD_Form_Field_Desc]'
GO
GRANT SELECT ON  [dbo].[EXT00900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT00900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT00900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT00900] TO [DYNGRP]
GO
