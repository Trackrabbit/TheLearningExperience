CREATE TABLE [dbo].[EXT10200]
(
[Lookup_Number] [int] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT10200] ADD CONSTRAINT [PKEXT10200] PRIMARY KEY NONCLUSTERED  ([Lookup_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT10200] ON [dbo].[EXT10200] ([Extender_Type], [Extender_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT10200].[Lookup_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT10200].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT10200].[Extender_ID]'
GO
GRANT SELECT ON  [dbo].[EXT10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT10200] TO [DYNGRP]
GO
