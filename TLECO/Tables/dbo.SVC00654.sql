CREATE TABLE [dbo].[SVC00654]
(
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMCLSCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[UNITPRCE] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00654] ADD CONSTRAINT [PKSVC00654] PRIMARY KEY CLUSTERED  ([PRICSHED], [ITMCLSCD], [CUSTCLAS], [ITEMNMBR], [CUSTNMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00654] ON [dbo].[SVC00654] ([PRICSHED], [CUSTCLAS], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00654] ON [dbo].[SVC00654] ([PRICSHED], [CUSTNMBR], [ITEMNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00654] ON [dbo].[SVC00654] ([PRICSHED], [ITEMNMBR], [CUSTCLAS], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00654] ON [dbo].[SVC00654] ([PRICSHED], [ITMCLSCD], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00654].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00654].[ITMCLSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00654].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00654].[CUSTCLAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00654].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00654].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00654].[UNITPRCE]'
GO
GRANT SELECT ON  [dbo].[SVC00654] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00654] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00654] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00654] TO [DYNGRP]
GO
