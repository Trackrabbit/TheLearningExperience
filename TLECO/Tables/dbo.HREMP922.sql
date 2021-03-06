CREATE TABLE [dbo].[HREMP922]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORGANIZATIONLEVEL_I] [smallint] NOT NULL,
[CODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HREMP922] ADD CONSTRAINT [PKHREMP922] PRIMARY KEY CLUSTERED  ([USERID], [ORGANIZATIONLEVEL_I], [CODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP922].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HREMP922].[ORGANIZATIONLEVEL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HREMP922].[CODE_I]'
GO
GRANT SELECT ON  [dbo].[HREMP922] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HREMP922] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HREMP922] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HREMP922] TO [DYNGRP]
GO
