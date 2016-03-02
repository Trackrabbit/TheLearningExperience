CREATE TABLE [dbo].[AAG00900]
(
[aaBudgetTreeID] [int] NOT NULL,
[aaBudgetTree] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaBudgetTreeDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00900] ADD CONSTRAINT [PKAAG00900] PRIMARY KEY CLUSTERED  ([aaBudgetTreeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00900] ON [dbo].[AAG00900] ([aaBudgetTree]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00900].[aaBudgetTreeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00900].[aaBudgetTree]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00900].[aaBudgetTreeDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00900].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00900] TO [DYNGRP]
GO
