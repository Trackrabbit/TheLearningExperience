CREATE TABLE [dbo].[UPR41900]
(
[EARNINGSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SFRFEDTX] [tinyint] NOT NULL,
[SHFRFICA] [tinyint] NOT NULL,
[SHFRSTTX] [tinyint] NOT NULL,
[SFRLCLTX] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41900] ADD CONSTRAINT [PKUPR41900] PRIMARY KEY NONCLUSTERED  ([EARNINGSCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41900] ON [dbo].[UPR41900] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41900].[EARNINGSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41900].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41900].[SFRFEDTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41900].[SHFRFICA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41900].[SHFRSTTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR41900].[SFRLCLTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41900].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[UPR41900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41900] TO [DYNGRP]
GO
