CREATE TABLE [dbo].[EXT20012]
(
[Field_ID] [int] NOT NULL,
[Field_Alias] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Alias_Field_ID] [int] NOT NULL,
[Field_Number] [smallint] NOT NULL,
[Lookup_Field_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20012] ADD CONSTRAINT [PKEXT20012] PRIMARY KEY NONCLUSTERED  ([Field_ID], [Field_Alias]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20012].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20012].[Field_Alias]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20012].[Alias_Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20012].[Field_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20012].[Lookup_Field_Number]'
GO
GRANT SELECT ON  [dbo].[EXT20012] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20012] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20012] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20012] TO [DYNGRP]
GO
