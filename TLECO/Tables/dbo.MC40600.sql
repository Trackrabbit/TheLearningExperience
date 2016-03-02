CREATE TABLE [dbo].[MC40600]
(
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CurrentExchangeTableID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HistoricalExchgTableID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AverageExchangeTableID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BudgetExchangeTableID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC40600] ADD CONSTRAINT [PKMC40600] PRIMARY KEY NONCLUSTERED  ([CURNCYID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC40600] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40600].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40600].[CurrentExchangeTableID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40600].[HistoricalExchgTableID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40600].[AverageExchangeTableID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC40600].[BudgetExchangeTableID]'
GO
GRANT SELECT ON  [dbo].[MC40600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC40600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC40600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC40600] TO [DYNGRP]
GO
