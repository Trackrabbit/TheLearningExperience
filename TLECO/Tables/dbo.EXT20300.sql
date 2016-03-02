CREATE TABLE [dbo].[EXT20300]
(
[Extender_Template_ID] [int] NOT NULL,
[Template_Description] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Extender_Type] [smallint] NOT NULL,
[Extender_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Replacement_Rule] [smallint] NOT NULL,
[Field_ID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EXT20300] ADD CONSTRAINT [PKEXT20300] PRIMARY KEY NONCLUSTERED  ([Extender_Template_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3EXT20300] ON [dbo].[EXT20300] ([Extender_Type], [Extender_ID], [Extender_Template_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2EXT20300] ON [dbo].[EXT20300] ([Template_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20300].[Extender_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20300].[Template_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20300].[Extender_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[EXT20300].[Extender_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20300].[Replacement_Rule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[EXT20300].[Field_ID]'
GO
GRANT SELECT ON  [dbo].[EXT20300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[EXT20300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[EXT20300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[EXT20300] TO [DYNGRP]
GO
