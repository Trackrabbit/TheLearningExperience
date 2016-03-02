CREATE TABLE [dbo].[AAG00601]
(
[aaTreeID] [int] NOT NULL,
[aaNodeID] [int] NOT NULL,
[aaNode] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaLevel] [int] NOT NULL,
[aaParentNodeID] [int] NOT NULL,
[aaOrder] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00601] ADD CONSTRAINT [PKAAG00601] PRIMARY KEY CLUSTERED  ([aaTreeID], [aaNodeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00601] ON [dbo].[AAG00601] ([aaTreeID], [aaLevel], [aaOrder], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00601] ON [dbo].[AAG00601] ([aaTreeID], [aaNode], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00601].[aaTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00601].[aaNodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00601].[aaNode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00601].[aaLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00601].[aaParentNodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00601].[aaOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00601].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00601] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00601] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00601] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00601] TO [DYNGRP]
GO
