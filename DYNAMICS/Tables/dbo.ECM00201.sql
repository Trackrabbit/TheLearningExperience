CREATE TABLE [dbo].[ECM00201]
(
[CompanyID] [int] NOT NULL,
[SessionID] [int] NOT NULL,
[BudgetID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PeriodID] [smallint] NOT NULL,
[BudgetAmt] [numeric] (19, 5) NOT NULL,
[Accatnum] [smallint] NOT NULL,
[ActIndx] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ECM00201] ADD CONSTRAINT [PKECM00201] PRIMARY KEY CLUSTERED  ([CompanyID], [SessionID], [BudgetID], [PeriodID], [ActIndx]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM00201].[CompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM00201].[SessionID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ECM00201].[BudgetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM00201].[PeriodID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ECM00201].[BudgetAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM00201].[Accatnum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ECM00201].[ActIndx]'
GO
GRANT SELECT ON  [dbo].[ECM00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ECM00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ECM00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ECM00201] TO [DYNGRP]
GO
