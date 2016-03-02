CREATE TABLE [dbo].[B4602600]
(
[BSSI_Charge_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Type] [smallint] NOT NULL,
[BSSI_Charge_Acct_Type] [smallint] NOT NULL,
[BSSI_Charge_Account_Num_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Charge_Account_Num_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Discount_Account_Nu_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[BSSI_Deferral_Account_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferral_Account_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferral_Account_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferral_Account_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_FloorAmt] [numeric] (19, 5) NOT NULL,
[BSSI_CeilingAmt] [numeric] (19, 5) NOT NULL,
[BSSI_SeperateInvoice] [tinyint] NOT NULL,
[BSSI_ChargeRecoveType] [smallint] NOT NULL,
[BSSI_Abatement_Charge] [tinyint] NOT NULL,
[DOCID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineDefAcco_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineDefAcco_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineDefAcco_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineDefAcco_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_StraightLineAssetAc_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_CreateSchBasedDate] [tinyint] NOT NULL,
[BSSI_RecognitionFrequenc] [smallint] NOT NULL,
[BSSI_Template_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RecognitionAcctIndx] [int] NOT NULL,
[BSSI_SendReminder] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602600] ADD CONSTRAINT [PKB4602600] PRIMARY KEY NONCLUSTERED  ([BSSI_Charge_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602600] ON [dbo].[B4602600] ([BSSI_Description], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Charge_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_Charge_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_Charge_Acct_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Charge_Account_Num_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Charge_Account_Num_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Charge_Account_Num_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Charge_Account_Num_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Discount_Account_Nu_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Discount_Account_Nu_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Discount_Account_Nu_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Discount_Account_Nu_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Deferral_Account_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Deferral_Account_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Deferral_Account_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Deferral_Account_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602600].[BSSI_FloorAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602600].[BSSI_CeilingAmt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_SeperateInvoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_ChargeRecoveType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_Abatement_Charge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[DOCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineDefAcco_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineDefAcco_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineDefAcco_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineDefAcco_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineAssetAc_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineAssetAc_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineAssetAc_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_StraightLineAssetAc_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_CreateSchBasedDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_RecognitionFrequenc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602600].[BSSI_Template_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_RecognitionAcctIndx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602600].[BSSI_SendReminder]'
GO
GRANT SELECT ON  [dbo].[B4602600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602600] TO [DYNGRP]
GO
