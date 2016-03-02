CREATE TABLE [dbo].[SE000300]
(
[SEOPTNME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERESCNT] [smallint] NOT NULL,
[SESORNO1] [smallint] NOT NULL,
[USEACCEL] [tinyint] NOT NULL,
[SENOCOLM] [smallint] NOT NULL,
[Accounts_Included] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SE000300] ADD CONSTRAINT [PKSE000300] PRIMARY KEY NONCLUSTERED  ([SEOPTNME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE000300].[SEOPTNME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000300].[SERESCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000300].[SESORNO1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000300].[USEACCEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000300].[SENOCOLM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE000300].[Accounts_Included]'
GO
GRANT SELECT ON  [dbo].[SE000300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SE000300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SE000300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SE000300] TO [DYNGRP]
GO
