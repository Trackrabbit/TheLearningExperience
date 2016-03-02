CREATE TABLE [dbo].[B0510067]
(
[MJW_Transfer_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Units_Transfered] [numeric] (19, 5) NOT NULL,
[MJW_Investment_Transfer] [tinyint] NOT NULL,
[MJW_Transfer_Price] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510067] ADD CONSTRAINT [PKB0510067] PRIMARY KEY CLUSTERED  ([MJW_Transfer_Number], [MJW_Investment_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510067].[MJW_Transfer_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510067].[MJW_Investment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510067].[MJW_Units_Transfered]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510067].[MJW_Investment_Transfer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0510067].[MJW_Transfer_Price]'
GO
GRANT SELECT ON  [dbo].[B0510067] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510067] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510067] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510067] TO [DYNGRP]
GO
