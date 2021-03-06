CREATE TABLE [dbo].[SVC00225]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRDLINE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROBCDE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPRCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUMOFTRX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00225] ADD CONSTRAINT [PKSVC00225] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1SVC00225] ON [dbo].[SVC00225] ([ITEMNMBR], [PROBCDE], [RPRCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00225] ON [dbo].[SVC00225] ([PRDLINE], [PROBCDE], [RPRCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00225].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00225].[PRDLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00225].[PROBCDE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00225].[RPRCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00225].[NUMOFTRX]'
GO
GRANT SELECT ON  [dbo].[SVC00225] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00225] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00225] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00225] TO [DYNGRP]
GO
