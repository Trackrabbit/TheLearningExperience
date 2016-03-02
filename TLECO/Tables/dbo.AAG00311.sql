CREATE TABLE [dbo].[AAG00311]
(
[aaMLQueryID] [int] NOT NULL,
[aaColumn] [smallint] NOT NULL,
[aaOrder] [int] NOT NULL,
[aaTotals] [tinyint] NOT NULL,
[aaPageBreak] [tinyint] NOT NULL,
[aaUDFSelect] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00311] ADD CONSTRAINT [PKAAG00311] PRIMARY KEY CLUSTERED  ([aaMLQueryID], [aaColumn]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00311] ON [dbo].[AAG00311] ([aaMLQueryID], [aaOrder], [aaColumn]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00311].[aaMLQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00311].[aaColumn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00311].[aaOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00311].[aaTotals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00311].[aaPageBreak]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00311].[aaUDFSelect]'
GO
GRANT SELECT ON  [dbo].[AAG00311] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00311] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00311] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00311] TO [DYNGRP]
GO
