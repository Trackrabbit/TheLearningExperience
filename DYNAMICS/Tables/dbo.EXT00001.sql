CREATE TABLE [dbo].[EXT00001]
(
[Extender_Resource_Number] [int] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT00001] ADD CONSTRAINT [PKEXT00001] PRIMARY KEY NONCLUSTERED  ([Extender_Resource_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT00001] ON [dbo].[EXT00001] ([CMPANYID], [Extender_Type], [Extender_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT00001] ON [dbo].[EXT00001] ([Extender_Type], [CMPANYID], [Extender_Resource_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT00001].[Extender_Resource_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT00001].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT00001].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT00001].[Extender_ID]'
GO
GRANT SELECT ON  [dbo].[EXT00001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT00001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT00001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT00001] TO [DYNGRP]
GO
