CREATE TABLE [dbo].[GL40401]
(
[Reconciliation_Number] [int] NOT NULL,
[Reconciliation_Date] [datetime] NOT NULL,
[MODULE1] [smallint] NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SubledgerBegBalance] [numeric] (19, 5) NOT NULL,
[SubledgerEndingBalance] [numeric] (19, 5) NOT NULL,
[GL_Beginning_Balance] [numeric] (19, 5) NOT NULL,
[GL_Ending_Balance] [numeric] (19, 5) NOT NULL,
[From_Date] [datetime] NOT NULL,
[TODATE] [datetime] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL40401] ADD CONSTRAINT [CK__GL40401__From_Da__351DDF8C] CHECK ((datepart(hour,[From_Date])=(0) AND datepart(minute,[From_Date])=(0) AND datepart(second,[From_Date])=(0) AND datepart(millisecond,[From_Date])=(0)))
GO
ALTER TABLE [dbo].[GL40401] ADD CONSTRAINT [CK__GL40401__Reconci__361203C5] CHECK ((datepart(hour,[Reconciliation_Date])=(0) AND datepart(minute,[Reconciliation_Date])=(0) AND datepart(second,[Reconciliation_Date])=(0) AND datepart(millisecond,[Reconciliation_Date])=(0)))
GO
ALTER TABLE [dbo].[GL40401] ADD CONSTRAINT [CK__GL40401__TODATE__370627FE] CHECK ((datepart(hour,[TODATE])=(0) AND datepart(minute,[TODATE])=(0) AND datepart(second,[TODATE])=(0) AND datepart(millisecond,[TODATE])=(0)))
GO
ALTER TABLE [dbo].[GL40401] ADD CONSTRAINT [PKGL40401] PRIMARY KEY NONCLUSTERED  ([Reconciliation_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7GL40401] ON [dbo].[GL40401] ([CHEKBKID], [MODULE1], [Reconciliation_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL40401] ON [dbo].[GL40401] ([From_Date], [MODULE1], [Reconciliation_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL40401] ON [dbo].[GL40401] ([MODULE1], [From_Date], [Reconciliation_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6GL40401] ON [dbo].[GL40401] ([MODULE1], [Reconciliation_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5GL40401] ON [dbo].[GL40401] ([Reconciliation_Date], [From_Date], [Reconciliation_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL40401] ON [dbo].[GL40401] ([TODATE], [MODULE1], [Reconciliation_Number]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40401].[Reconciliation_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL40401].[Reconciliation_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40401].[MODULE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40401].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL40401].[SubledgerBegBalance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL40401].[SubledgerEndingBalance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL40401].[GL_Beginning_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL40401].[GL_Ending_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL40401].[From_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL40401].[TODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL40401].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL40401].[Status]'
GO
GRANT SELECT ON  [dbo].[GL40401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL40401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL40401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL40401] TO [DYNGRP]
GO
