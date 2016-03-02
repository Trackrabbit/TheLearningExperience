CREATE TABLE [dbo].[AAG00901]
(
[aaBudgetTreeID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaOrder] [int] NOT NULL,
[aaSelectOpt] [smallint] NOT NULL,
[aaTrxDimCodeFr] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTrxDimCodeTo] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00901] ADD CONSTRAINT [PKAAG00901] PRIMARY KEY CLUSTERED  ([aaBudgetTreeID], [aaTrxDimID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00901] ON [dbo].[AAG00901] ([aaBudgetTreeID], [aaOrder], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00901].[aaBudgetTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00901].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00901].[aaOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00901].[aaSelectOpt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00901].[aaTrxDimCodeFr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00901].[aaTrxDimCodeTo]'
GO
GRANT SELECT ON  [dbo].[AAG00901] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00901] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00901] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00901] TO [DYNGRP]
GO
