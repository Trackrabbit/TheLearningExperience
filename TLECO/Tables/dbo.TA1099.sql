CREATE TABLE [dbo].[TA1099]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APTVCHNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TA1099] ADD CONSTRAINT [PKTA1099] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1TA1099] ON [dbo].[TA1099] ([VENDORID], [APTVCHNM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TA1099].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TA1099].[APTVCHNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TA1099].[APPLDAMT]'
GO
GRANT SELECT ON  [dbo].[TA1099] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TA1099] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TA1099] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TA1099] TO [DYNGRP]
GO
