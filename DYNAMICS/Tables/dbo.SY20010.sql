CREATE TABLE [dbo].[SY20010]
(
[TemplateID] [int] NOT NULL,
[TemplatePartID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TemplatePartXML] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY20010] ADD CONSTRAINT [PKSY20010] PRIMARY KEY NONCLUSTERED  ([TemplateID], [TemplatePartID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20010].[TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20010].[TemplatePartID]'
GO
GRANT SELECT ON  [dbo].[SY20010] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY20010] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY20010] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY20010] TO [DYNGRP]
GO
