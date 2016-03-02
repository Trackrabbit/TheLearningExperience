CREATE TABLE [dbo].[PM20401]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[PRINCIPAL_BALANCE] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[Status] [smallint] NOT NULL,
[MARKED] [tinyint] NOT NULL,
[MKDBYUSR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM20401] ADD CONSTRAINT [CK__PM20401__DOCDATE__0B129727] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20401] ADD CONSTRAINT [CK__PM20401__DUEDATE__0C06BB60] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[PM20401] ADD CONSTRAINT [PKPM20401] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM20401] ON [dbo].[PM20401] ([MARKED], [MKDBYUSR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM20401] ON [dbo].[PM20401] ([SCHEDULE_NUMBER], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM20401] ON [dbo].[PM20401] ([VENDORID], [SCHEDULE_NUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20401].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20401].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20401].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20401].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20401].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20401].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20401].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20401].[PRINCIPAL_BALANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20401].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20401].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20401].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20401].[MARKED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20401].[MKDBYUSR]'
GO
GRANT SELECT ON  [dbo].[PM20401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM20401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM20401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM20401] TO [DYNGRP]
GO
