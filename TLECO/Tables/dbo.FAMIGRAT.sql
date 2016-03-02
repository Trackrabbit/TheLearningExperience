CREATE TABLE [dbo].[FAMIGRAT]
(
[INDEX1] [smallint] NOT NULL,
[Major_Version] [smallint] NOT NULL,
[Minor_Version] [smallint] NOT NULL,
[Build_Number] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FAMIGRAT] ADD CONSTRAINT [PKFAMIGRAT] PRIMARY KEY NONCLUSTERED  ([INDEX1]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAMIGRAT].[INDEX1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAMIGRAT].[Major_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAMIGRAT].[Minor_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FAMIGRAT].[Build_Number]'
GO
GRANT SELECT ON  [dbo].[FAMIGRAT] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FAMIGRAT] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FAMIGRAT] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FAMIGRAT] TO [DYNGRP]
GO
