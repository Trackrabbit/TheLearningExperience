CREATE TABLE [dbo].[AAG00603]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaNodeID] [int] NOT NULL,
[aaNode] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaLevel] [int] NOT NULL,
[aaParentNodeID] [int] NOT NULL,
[aaOrder] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00603] ADD CONSTRAINT [PKAAG00603] PRIMARY KEY CLUSTERED  ([USERID], [aaNodeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AAG00603] ON [dbo].[AAG00603] ([aaParentNodeID], [aaOrder], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00603] ON [dbo].[AAG00603] ([USERID], [aaLevel], [aaOrder], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00603] ON [dbo].[AAG00603] ([USERID], [aaNode]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00603].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00603].[aaNodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00603].[aaNode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00603].[aaLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00603].[aaParentNodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00603].[aaOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00603].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00603].[Status]'
GO
GRANT SELECT ON  [dbo].[AAG00603] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00603] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00603] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00603] TO [DYNGRP]
GO
