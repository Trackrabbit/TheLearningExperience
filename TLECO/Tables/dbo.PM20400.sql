CREATE TABLE [dbo].[PM20400]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_DESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIG_DOC_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIG_DOC_TYPE] [smallint] NOT NULL,
[ORIG_VOUCHER_NUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCH_DOC_DATE] [datetime] NOT NULL,
[SCHEDULE_AMOUNT] [numeric] (19, 5) NOT NULL,
[FuncSchAmnt] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_INT_TYPE1] [smallint] NOT NULL,
[SCHEDULE_INT_RATE] [int] NOT NULL,
[NUM_PAYMENTS] [smallint] NOT NULL,
[PYMNT_FREQUENCY] [smallint] NOT NULL,
[PAYMENT_AMOUNT] [numeric] (19, 5) NOT NULL,
[FIRST_INV_DOC_DATE] [datetime] NOT NULL,
[FIRST_INV_DUE_DATE] [datetime] NOT NULL,
[PAY_ACCT_IDX] [int] NOT NULL,
[PAY_OFFSET_ACCT_IDX] [int] NOT NULL,
[INT_EXP_ACCT_IDX] [int] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[Status] [smallint] NOT NULL,
[CREDIT_MEMO_DOC_NUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VADCDTRO] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM20400] ADD CONSTRAINT [CK__PM20400__FIRST_I__064DE20A] CHECK ((datepart(hour,[FIRST_INV_DOC_DATE])=(0) AND datepart(minute,[FIRST_INV_DOC_DATE])=(0) AND datepart(second,[FIRST_INV_DOC_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[PM20400] ADD CONSTRAINT [CK__PM20400__FIRST_I__07420643] CHECK ((datepart(hour,[FIRST_INV_DUE_DATE])=(0) AND datepart(minute,[FIRST_INV_DUE_DATE])=(0) AND datepart(second,[FIRST_INV_DUE_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DUE_DATE])=(0)))
GO
ALTER TABLE [dbo].[PM20400] ADD CONSTRAINT [CK__PM20400__SCH_DOC__08362A7C] CHECK ((datepart(hour,[SCH_DOC_DATE])=(0) AND datepart(minute,[SCH_DOC_DATE])=(0) AND datepart(second,[SCH_DOC_DATE])=(0) AND datepart(millisecond,[SCH_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[PM20400] ADD CONSTRAINT [PKPM20400] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM20400] ON [dbo].[PM20400] ([VENDORID], [SCHEDULE_NUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[SCHEDULE_DESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[ORIG_DOC_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[ORIG_DOC_TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[ORIG_VOUCHER_NUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20400].[SCH_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20400].[SCHEDULE_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20400].[FuncSchAmnt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[NUM_PAYMENTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[PYMNT_FREQUENCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20400].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20400].[FIRST_INV_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM20400].[FIRST_INV_DUE_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[PAY_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[PAY_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[INT_EXP_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM20400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM20400].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[CREDIT_MEMO_DOC_NUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM20400].[VADCDTRO]'
GO
GRANT SELECT ON  [dbo].[PM20400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM20400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM20400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM20400] TO [DYNGRP]
GO
