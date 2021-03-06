CREATE TABLE [dbo].[CPO10111]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[Committed_Amount] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CPO10111] ADD CONSTRAINT [PKCPO10111] PRIMARY KEY NONCLUSTERED  ([PONUMBER], [ORD], [ACTINDX]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CPO10111].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO10111].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CPO10111].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CPO10111].[Committed_Amount]'
GO
GRANT SELECT ON  [dbo].[CPO10111] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CPO10111] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CPO10111] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CPO10111] TO [DYNGRP]
GO
