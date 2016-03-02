CREATE TABLE [dbo].[B0500400]
(
[BSSI_CategoryID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CategoryDescription] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0500400] ADD CONSTRAINT [PKB0500400] PRIMARY KEY CLUSTERED  ([BSSI_CategoryID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B0500400] ON [dbo].[B0500400] ([BSSI_CategoryDescription], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500400].[BSSI_CategoryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0500400].[BSSI_CategoryDescription]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0500400].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B0500400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0500400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0500400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0500400] TO [DYNGRP]
GO