CREATE TABLE [dbo].[AAG04000]
(
[aaFASetupID] [int] NOT NULL,
[ListID] [smallint] NOT NULL,
[INTERID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[aaBrowseType] [smallint] NOT NULL,
[aaAssetIndex] [int] NOT NULL,
[aaBookIndex] [int] NOT NULL,
[aaAliasID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG04000] ADD CONSTRAINT [PKAAG04000] PRIMARY KEY NONCLUSTERED  ([aaFASetupID], [ListID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG04000] ON [dbo].[AAG04000] ([aaAssetIndex], [aaBookIndex], [ListID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[aaFASetupID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG04000].[INTERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG04000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[aaBrowseType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[aaAssetIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[aaBookIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG04000].[aaAliasID]'
GO
GRANT SELECT ON  [dbo].[AAG04000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG04000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG04000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG04000] TO [DYNGRP]
GO
