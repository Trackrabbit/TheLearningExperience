CREATE TABLE [dbo].[AAG00904]
(
[aaBudgetID] [int] NOT NULL,
[aaCodeSequence] [int] NOT NULL,
[PERIODDT] [datetime] NOT NULL,
[aaFiscalPeriod] [smallint] NOT NULL,
[aaActualPriliminary] [int] NOT NULL,
[Balance] [numeric] (19, 5) NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[YEAR1] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG00904__DEX_RO__1F98B2C1] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG00904U] ON [dbo].[AAG00904] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG00904 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG00904, inserted WHERE AAG00904.aaBudgetID = inserted.aaBudgetID AND AAG00904.aaCodeSequence = inserted.aaCodeSequence AND AAG00904.PERIODDT = inserted.PERIODDT AND AAG00904.aaFiscalPeriod = inserted.aaFiscalPeriod AND AAG00904.aaActualPriliminary = inserted.aaActualPriliminary END set nocount off    
GO
ALTER TABLE [dbo].[AAG00904] ADD CONSTRAINT [CK__AAG00904__PERIOD__7E437745] CHECK ((datepart(hour,[PERIODDT])=(0) AND datepart(minute,[PERIODDT])=(0) AND datepart(second,[PERIODDT])=(0) AND datepart(millisecond,[PERIODDT])=(0)))
GO
ALTER TABLE [dbo].[AAG00904] ADD CONSTRAINT [PKAAG00904] PRIMARY KEY CLUSTERED  ([aaBudgetID], [aaCodeSequence], [PERIODDT], [aaFiscalPeriod], [aaActualPriliminary]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BudgetID] ON [dbo].[AAG00904] ([aaBudgetID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BudIDActualPrel] ON [dbo].[AAG00904] ([aaBudgetID], [aaActualPriliminary]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00904].[aaBudgetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00904].[aaCodeSequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00904].[PERIODDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00904].[aaFiscalPeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00904].[aaActualPriliminary]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00904].[Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00904].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00904].[YEAR1]'
GO
GRANT SELECT ON  [dbo].[AAG00904] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00904] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00904] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00904] TO [DYNGRP]
GO
