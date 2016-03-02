CREATE TABLE [dbo].[B9000402]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Schedule_Payment_Number] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[PMNTNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMNTDAT] [datetime] NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[INTEREST_AMOUNT] [numeric] (19, 5) NOT NULL,
[CHRGAMNT] [numeric] (19, 5) NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B9000402] ADD CONSTRAINT [CK__B9000402__PYMNTD__3F237121] CHECK ((datepart(hour,[PYMNTDAT])=(0) AND datepart(minute,[PYMNTDAT])=(0) AND datepart(second,[PYMNTDAT])=(0) AND datepart(millisecond,[PYMNTDAT])=(0)))
GO
ALTER TABLE [dbo].[B9000402] ADD CONSTRAINT [PKB9000402] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER], [Schedule_Payment_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B9000402] ON [dbo].[B9000402] ([SCHEDULE_NUMBER], [PYMNTDAT], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000402].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000402].[Schedule_Payment_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000402].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000402].[PMNTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000402].[PYMNTDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000402].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000402].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000402].[INTEREST_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000402].[CHRGAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000402].[CHEKNMBR]'
GO
GRANT SELECT ON  [dbo].[B9000402] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B9000402] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B9000402] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B9000402] TO [DYNGRP]
GO
