CREATE TABLE [dbo].[B4610003]
(
[BSSI_SICCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4610003] ADD CONSTRAINT [PKB4610003] PRIMARY KEY CLUSTERED  ([BSSI_SICCode]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4610003] ON [dbo].[B4610003] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610003].[BSSI_SICCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610003].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610003].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4610003] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4610003] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4610003] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4610003] TO [DYNGRP]
GO
