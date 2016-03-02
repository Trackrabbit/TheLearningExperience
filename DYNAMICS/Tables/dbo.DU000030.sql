CREATE TABLE [dbo].[DU000030]
(
[PRODID] [smallint] NOT NULL,
[fileNumber] [smallint] NOT NULL,
[companyID] [smallint] NOT NULL,
[errornum] [int] NOT NULL,
[errordes] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DU000030] ADD CONSTRAINT [PKDU000030] PRIMARY KEY NONCLUSTERED  ([PRODID], [fileNumber], [companyID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2DU000030] ON [dbo].[DU000030] ([companyID], [PRODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1DU000030] ON [dbo].[DU000030] ([fileNumber], [PRODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4DU000030] ON [dbo].[DU000030] ([PRODID], [companyID], [fileNumber]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000030].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000030].[fileNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000030].[companyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000030].[errornum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DU000030].[errordes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DU000030].[Status]'
GO
GRANT SELECT ON  [dbo].[DU000030] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DU000030] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DU000030] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DU000030] TO [DYNGRP]
GO
