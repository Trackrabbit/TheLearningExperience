CREATE TABLE [dbo].[EXT01201]
(
[Extender_Record_ID] [int] NOT NULL,
[Field_ID] [int] NOT NULL,
[STRGA255] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT01201] ADD CONSTRAINT [PKEXT01201] PRIMARY KEY NONCLUSTERED  ([Extender_Record_ID], [Field_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01201].[Extender_Record_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT01201].[Field_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT01201].[STRGA255]'
GO
GRANT SELECT ON  [dbo].[EXT01201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT01201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT01201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT01201] TO [DYNGRP]
GO
