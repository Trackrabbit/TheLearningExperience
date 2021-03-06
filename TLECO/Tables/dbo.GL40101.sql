CREATE TABLE [dbo].[GL40101]
(
[BSNSFMID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[ACTINDX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL40101] ADD CONSTRAINT [PKGL40101] PRIMARY KEY NONCLUSTERED  ([BSNSFMID], [SEQUENCE1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL40101] ON [dbo].[GL40101] ([ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40101].[BSNSFMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL40101].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40101].[ACTINDX]'
GO
GRANT SELECT ON  [dbo].[GL40101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL40101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL40101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL40101] TO [DYNGRP]
GO
