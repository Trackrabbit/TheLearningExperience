CREATE TABLE [dbo].[SY20020]
(
[TemplateID] [int] NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[IsDefault] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY20020] ADD CONSTRAINT [PKSY20020] PRIMARY KEY NONCLUSTERED  ([TemplateID], [CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20020].[TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20020].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY20020].[IsDefault]'
GO
GRANT SELECT ON  [dbo].[SY20020] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY20020] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY20020] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY20020] TO [DYNGRP]
GO
