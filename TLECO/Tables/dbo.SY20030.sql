CREATE TABLE [dbo].[SY20030]
(
[TemplateID] [int] NOT NULL,
[EntityTypeID] [int] NOT NULL,
[EntityIDValue] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY20030] ADD CONSTRAINT [PKSY20030] PRIMARY KEY NONCLUSTERED  ([TemplateID], [EntityTypeID], [EntityIDValue]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20030].[TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20030].[EntityTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY20030].[EntityIDValue]'
GO
GRANT SELECT ON  [dbo].[SY20030] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY20030] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY20030] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY20030] TO [DYNGRP]
GO
