CREATE TABLE [dbo].[B4602908]
(
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Is_Revenue_Sharing] [tinyint] NOT NULL,
[BSSI_Charge_Account_Num_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[DISCAMNT] [numeric] (19, 5) NOT NULL,
[PRCTOSAL] [smallint] NOT NULL,
[BSSI_Master_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602908] ADD CONSTRAINT [PKB4602908] PRIMARY KEY NONCLUSTERED  ([BSSI_Ground_Lease_Number], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602908] ON [dbo].[B4602908] ([BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602908] ON [dbo].[B4602908] ([BSSI_Ground_Lease_Number], [BSSI_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602908] ON [dbo].[B4602908] ([BSSI_Ground_Lease_Number], [BSSI_Master_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602908] ON [dbo].[B4602908] ([BSSI_Master_Charge_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602908].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602908].[BSSI_Is_Revenue_Sharing]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Charge_Account_Num_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Charge_Account_Num_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Charge_Account_Num_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Charge_Account_Num_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Discount_Account_Nu_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Discount_Account_Nu_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Discount_Account_Nu_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Discount_Account_Nu_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602908].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602908].[DISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602908].[PRCTOSAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602908].[BSSI_Master_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602908].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4602908] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602908] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602908] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602908] TO [DYNGRP]
GO
