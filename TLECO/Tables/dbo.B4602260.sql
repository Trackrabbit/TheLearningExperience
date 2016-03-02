CREATE TABLE [dbo].[B4602260]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Deposit_Type_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMTrxNum] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Reversing_Trx_Numbe] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[BSSI_Record_Number] [numeric] (19, 5) NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RcpType] [smallint] NOT NULL,
[BSSI_Receipt_Type] [smallint] NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[BSSI_Reversing_Date] [datetime] NOT NULL,
[BSSI_Deposit_Account_Num_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deposit_Account_Num_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deposit_Account_Num_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deposit_Account_Num_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_Reversing_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Is_Invoiced] [tinyint] NOT NULL,
[BSSI_Is_Reverted] [tinyint] NOT NULL,
[BSSI_Cash_Trx_Type] [smallint] NOT NULL,
[BSSI_Reversing_Trx_Type] [smallint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[BSSI_JE_Amt] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602260] ADD CONSTRAINT [CK__B4602260__BSSI_R__4DECEC7C] CHECK ((datepart(hour,[BSSI_Reversing_Date])=(0) AND datepart(minute,[BSSI_Reversing_Date])=(0) AND datepart(second,[BSSI_Reversing_Date])=(0) AND datepart(millisecond,[BSSI_Reversing_Date])=(0)))
GO
ALTER TABLE [dbo].[B4602260] ADD CONSTRAINT [CK__B4602260__DATE1__4CF8C843] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4602260] ADD CONSTRAINT [PKB4602260] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602260] ON [dbo].[B4602260] ([BSSI_Tenant_Lease_Number], [BSSI_Deposit_Type_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602260] ON [dbo].[B4602260] ([CHEKBKID], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602260] ON [dbo].[B4602260] ([CMRECNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602260] ON [dbo].[B4602260] ([DATE1], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602260].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[BSSI_Deposit_Type_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[CMTrxNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[BSSI_Reversing_Trx_Numbe]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602260].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602260].[BSSI_Record_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602260].[RcpType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602260].[BSSI_Receipt_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602260].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602260].[BSSI_Reversing_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[BSSI_Deposit_Account_Num_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[BSSI_Deposit_Account_Num_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[BSSI_Deposit_Account_Num_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602260].[BSSI_Deposit_Account_Num_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602260].[DOCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602260].[BSSI_Reversing_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602260].[BSSI_Is_Invoiced]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602260].[BSSI_Is_Reverted]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602260].[BSSI_Cash_Trx_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602260].[BSSI_Reversing_Trx_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602260].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602260].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602260].[BSSI_JE_Amt]'
GO
GRANT SELECT ON  [dbo].[B4602260] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602260] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602260] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602260] TO [DYNGRP]
GO
