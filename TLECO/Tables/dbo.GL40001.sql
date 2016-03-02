CREATE TABLE [dbo].[GL40001]
(
[Ledger_ID] [smallint] NOT NULL,
[Ledger_Name] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ledger_Description] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UNIQKEY] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL40001] ADD CONSTRAINT [PKGL40001] PRIMARY KEY NONCLUSTERED  ([Ledger_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40001].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40001].[Ledger_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40001].[Ledger_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40001].[UNIQKEY]'
GO
GRANT SELECT ON  [dbo].[GL40001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL40001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL40001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL40001] TO [DYNGRP]
GO
