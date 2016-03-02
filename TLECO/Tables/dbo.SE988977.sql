CREATE TABLE [dbo].[SE988977]
(
[SEOPTNME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SE_Column_Number] [smallint] NOT NULL,
[SECOL] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SECOLTYP] [smallint] NOT NULL,
[BUDGETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SE988977] ADD CONSTRAINT [PKSE988977] PRIMARY KEY CLUSTERED  ([SEOPTNME], [SE_Column_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE988977].[SEOPTNME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE988977].[SE_Column_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE988977].[SECOL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE988977].[SECOLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SE988977].[BUDGETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SE988977].[CURRNIDX]'
GO
GRANT SELECT ON  [dbo].[SE988977] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SE988977] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SE988977] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SE988977] TO [DYNGRP]
GO
