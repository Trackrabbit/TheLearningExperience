CREATE TABLE [dbo].[AAG00312]
(
[aaMLQueryID] [int] NOT NULL,
[aaColID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaOrder] [int] NOT NULL,
[aaSubtotal] [tinyint] NOT NULL,
[aaBudgetID] [int] NOT NULL,
[aaTotal] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00312] ADD CONSTRAINT [PKAAG00312] PRIMARY KEY CLUSTERED  ([aaMLQueryID], [aaColID], [aaOrder], [aaTrxDimID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00312] ON [dbo].[AAG00312] ([aaMLQueryID], [aaOrder], [aaColID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00312].[aaMLQueryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00312].[aaColID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00312].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00312].[aaOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00312].[aaSubtotal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00312].[aaBudgetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00312].[aaTotal]'
GO
GRANT SELECT ON  [dbo].[AAG00312] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00312] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00312] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00312] TO [DYNGRP]
GO
