CREATE TABLE [dbo].[RM30401]
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
ALTER TABLE [dbo].[RM30401] ADD CONSTRAINT [CK__RM30401__FIRST_I__6AC5C326] CHECK ((datepart(hour,[FIRST_INV_DOC_DATE])=(0) AND datepart(minute,[FIRST_INV_DOC_DATE])=(0) AND datepart(second,[FIRST_INV_DOC_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[RM30401] ADD CONSTRAINT [CK__RM30401__FIRST_I__6BB9E75F] CHECK ((datepart(hour,[FIRST_INV_DUE_DATE])=(0) AND datepart(minute,[FIRST_INV_DUE_DATE])=(0) AND datepart(second,[FIRST_INV_DUE_DATE])=(0) AND datepart(millisecond,[FIRST_INV_DUE_DATE])=(0)))
GO
ALTER TABLE [dbo].[RM30401] ADD CONSTRAINT [CK__RM30401__SCH_DOC__6CAE0B98] CHECK ((datepart(hour,[SCH_DOC_DATE])=(0) AND datepart(minute,[SCH_DOC_DATE])=(0) AND datepart(second,[SCH_DOC_DATE])=(0) AND datepart(millisecond,[SCH_DOC_DATE])=(0)))
GO
ALTER TABLE [dbo].[RM30401] ADD CONSTRAINT [PKRM30401] PRIMARY KEY NONCLUSTERED  ([SCHEDULE_NUMBER]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM30401] ON [dbo].[RM30401] ([CUSTNMBR], [SCHEDULE_NUMBER]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30401].[SCHEDULE_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30401].[SCHEDULE_DESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30401].[ORIG_DOC_NUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[ORIG_DOC_TYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30401].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30401].[SCH_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30401].[SCHEDULE_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30401].[FuncSchAmnt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30401].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[SCHEDULE_INT_TYPE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[SCHEDULE_INT_RATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[NUM_PAYMENTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[PYMNT_FREQUENCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30401].[PAYMENT_AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30401].[FIRST_INV_DOC_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM30401].[FIRST_INV_DUE_DATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[REC_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[REC_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[INT_INCOME_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM30401].[CREDIT_MEMO_DOC_NUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM30401].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM30401].[Status]'
GO
GRANT SELECT ON  [dbo].[RM30401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM30401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM30401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM30401] TO [DYNGRP]
GO
