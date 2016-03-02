CREATE TABLE [dbo].[B2900509]
(
[PRINCIPAL_AMOUNT] [numeric] (19, 5) NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[BSSI_Recognition_Type] [smallint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_Recog_Length_Period] [int] NOT NULL,
[BSSI_Recog_Length_Months] [numeric] (19, 5) NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[BSSI_Recalculate] [tinyint] NOT NULL,
[BSSI_EnableMinTerm] [tinyint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ImportID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DownPayment] [numeric] (19, 5) NOT NULL,
[NUM_PAYMENTS] [smallint] NOT NULL,
[BSSI_EnableGracePeriod] [tinyint] NOT NULL,
[LASTPYDT] [datetime] NOT NULL,
[Remaining_Balance] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900509] ADD CONSTRAINT [CK__B2900509__LASTPY__1C0F3F0E] CHECK ((datepart(hour,[LASTPYDT])=(0) AND datepart(minute,[LASTPYDT])=(0) AND datepart(second,[LASTPYDT])=(0) AND datepart(millisecond,[LASTPYDT])=(0)))
GO
ALTER TABLE [dbo].[B2900509] ADD CONSTRAINT [CK__B2900509__STRTDA__1B1B1AD5] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[B2900509] ADD CONSTRAINT [PKB2900509] PRIMARY KEY NONCLUSTERED  ([USERID], [BSSI_ImportID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900509].[PRINCIPAL_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900509].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[BSSI_Recognition_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[BSSI_Recog_Length_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900509].[BSSI_Recog_Length_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900509].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[BSSI_Recalculate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[BSSI_EnableMinTerm]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900509].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900509].[BSSI_ImportID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900509].[ERRDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900509].[BSSI_DownPayment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[NUM_PAYMENTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900509].[BSSI_EnableGracePeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900509].[LASTPYDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2900509].[Remaining_Balance]'
GO
GRANT SELECT ON  [dbo].[B2900509] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900509] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900509] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900509] TO [DYNGRP]
GO
