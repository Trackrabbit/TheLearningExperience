CREATE TABLE [dbo].[gpAppEnb]
(
[MODULEID] [smallint] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[gpAppEnb] ADD CONSTRAINT [PKgpAppEnb] PRIMARY KEY NONCLUSTERED  ([MODULEID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpAppEnb].[MODULEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gpAppEnb].[ACTIVE]'
GO
GRANT SELECT ON  [dbo].[gpAppEnb] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gpAppEnb] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gpAppEnb] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gpAppEnb] TO [DYNGRP]
GO
