CREATE TABLE [dbo].[AAG00905]
(
[aaBudgetID] [int] NOT NULL,
[aaCodeSequence] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[PERIODDT] [datetime] NOT NULL,
[aaFiscalPeriod] [smallint] NOT NULL,
[aaActualPriliminary] [int] NOT NULL,
[aaRange] [smallint] NOT NULL,
[Balance] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00905] ADD CONSTRAINT [CK__AAG00905__PERIOD__011FE3F0] CHECK ((datepart(hour,[PERIODDT])=(0) AND datepart(minute,[PERIODDT])=(0) AND datepart(second,[PERIODDT])=(0) AND datepart(millisecond,[PERIODDT])=(0)))
GO
ALTER TABLE [dbo].[AAG00905] ADD CONSTRAINT [PKAAG00905] PRIMARY KEY CLUSTERED  ([aaBudgetID], [aaCodeSequence], [ACTINDX], [PERIODDT], [aaFiscalPeriod], [aaActualPriliminary]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BudgetID905] ON [dbo].[AAG00905] ([aaBudgetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BudgetIDActualPreliminary] ON [dbo].[AAG00905] ([aaBudgetID], [aaActualPriliminary]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BudgetidCodeSeq] ON [dbo].[AAG00905] ([aaBudgetID], [aaCodeSequence]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00905].[aaBudgetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00905].[aaCodeSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00905].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00905].[PERIODDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00905].[aaFiscalPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00905].[aaActualPriliminary]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00905].[aaRange]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00905].[Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00905].[YEAR1]'
GO
GRANT SELECT ON  [dbo].[AAG00905] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00905] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00905] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00905] TO [DYNGRP]
GO
