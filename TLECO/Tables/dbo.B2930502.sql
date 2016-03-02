CREATE TABLE [dbo].[B2930502]
(
[BSSI_LeaseID] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[FIRST_INV_DUE_DATE] [datetime] NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_DownPayment] [numeric] (19, 5) NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[PYMNT_FREQUENCY] [smallint] NOT NULL,
[NUM_PAYMENTS] [smallint] NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Import_Log] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ImportPhase] [smallint] NOT NULL,
[ORIG_DOC_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ImportDate] [datetime] NOT NULL,
[BSSI_CRM_IntRate] [int] NOT NULL,
[BSSI_CRM_PymtAmt] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2930502] ADD CONSTRAINT [CK__B2930502__BSSI_I__76F2C8F8] CHECK ((datepart(hour,[BSSI_ImportDate])=(0) AND datepart(minute,[BSSI_ImportDate])=(0) AND datepart(second,[BSSI_ImportDate])=(0) AND datepart(millisecond,[BSSI_ImportDate])=(0)))
GO
ALTER TABLE [dbo].[B2930502] ADD CONSTRAINT [CK__B2930502__DOCDAT__750A8086] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B2930502] ADD CONSTRAINT [CK__B2930502__FIRST___75FEA4BF] CHECK ((datepart(hour,[FIRST_INV_DUE_DATE])=(0) AND datepart(minute,[FIRST_INV_DUE_DATE])=(0) AND datepart(second,[FIRST_INV_DUE_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DUE_DATE])=(0)))
GO
ALTER TABLE [dbo].[B2930502] ADD CONSTRAINT [PKB2930502] PRIMARY KEY NONCLUSTERED  ([BSSI_LeaseID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B2930502] ON [dbo].[B2930502] ([BSSI_ImportPhase], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B2930502] ON [dbo].[B2930502] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B2930502] ON [dbo].[B2930502] ([SCHEDULE_NUMBER], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930502].[BSSI_LeaseID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930502].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930502].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930502].[FIRST_INV_DUE_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930502].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930502].[BSSI_DownPayment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930502].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930502].[PYMNT_FREQUENCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930502].[NUM_PAYMENTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930502].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930502].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930502].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930502].[BSSI_Import_Log]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930502].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930502].[BSSI_ImportPhase]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2930502].[ORIG_DOC_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2930502].[BSSI_ImportDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2930502].[BSSI_CRM_IntRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2930502].[BSSI_CRM_PymtAmt]'
GO
GRANT SELECT ON  [dbo].[B2930502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2930502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2930502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2930502] TO [DYNGRP]
GO
