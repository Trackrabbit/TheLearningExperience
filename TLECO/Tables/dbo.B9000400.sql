CREATE TABLE [dbo].[B9000400]
(
[SCHEDULE_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SCHEDULE_DESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIG_DOC_NUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORIG_DOC_TYPE] [smallint] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
[REC_ACCT_IDX] [int] NOT NULL,
[REC_OFFSET_ACCT_IDX] [int] NOT NULL,
[INT_INCOME_ACCT_IDX] [int] NOT NULL,
[CREDIT_MEMO_DOC_NUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B9000400] ADD CONSTRAINT [CK__B9000400__FIRST___1DC27D56] CHECK ((datepart(hour,[FIRST_INV_DOC_DATE])=(0) AND datepart(minute,[FIRST_INV_DOC_DATE])=(0) AND datepart(second,[FIRST_INV_DOC_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[B9000400] ADD CONSTRAINT [CK__B9000400__FIRST___1EB6A18F] CHECK ((datepart(hour,[FIRST_INV_DUE_DATE])=(0) AND datepart(minute,[FIRST_INV_DUE_DATE])=(0) AND datepart(second,[FIRST_INV_DUE_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DUE_DATE])=(0)))
GO
ALTER TABLE [dbo].[B9000400] ADD CONSTRAINT [CK__B9000400__SCH_DO__1CCE591D] CHECK ((datepart(hour,[SCH_DOC_DATE])=(0) AND datepart(minute,[SCH_DOC_DATE])=(0) AND datepart(second,[SCH_DOC_DATE])=(0) AND datepart(millisecond,[SCH_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[B9000400] ADD CONSTRAINT [PKB9000400] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B9000400] ON [dbo].[B9000400] ([CUSTNMBR], [SCHEDULE_NUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000400].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000400].[SCHEDULE_DESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000400].[ORIG_DOC_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[ORIG_DOC_TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000400].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000400].[SCH_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000400].[SCHEDULE_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000400].[FuncSchAmnt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000400].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[NUM_PAYMENTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[PYMNT_FREQUENCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000400].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000400].[FIRST_INV_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B9000400].[FIRST_INV_DUE_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[REC_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[REC_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[INT_INCOME_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B9000400].[CREDIT_MEMO_DOC_NUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B9000400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B9000400].[Status]'
GO
GRANT SELECT ON  [dbo].[B9000400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B9000400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B9000400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B9000400] TO [DYNGRP]
GO
