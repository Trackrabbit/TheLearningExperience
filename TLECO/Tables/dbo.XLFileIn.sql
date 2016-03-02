CREATE TABLE [dbo].[XLFileIn]
(
[FILEIDX] [int] NOT NULL,
[BUDGETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Worksht] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XLFileIn] ADD CONSTRAINT [PKXLFileIn] PRIMARY KEY NONCLUSTERED  ([FILEIDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[XLFileIn].[FILEIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLFileIn].[BUDGETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLFileIn].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[XLFileIn].[Worksht]'
GO
GRANT SELECT ON  [dbo].[XLFileIn] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[XLFileIn] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[XLFileIn] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[XLFileIn] TO [DYNGRP]
GO
