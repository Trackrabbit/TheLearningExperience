CREATE TABLE [dbo].[B7133303]
(
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[CMPNTSEQ] [int] NOT NULL,
[BSSI_DeferralStartDate] [datetime] NOT NULL,
[BSSI_DeferralEndDate] [datetime] NOT NULL,
[BSSI_Recog_TemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Contract_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_RBLineSeqNumber] [int] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[BSSI_Deferrable] [tinyint] NOT NULL,
[BSSI_Recog_Acct_Index] [int] NOT NULL,
[BSSI_ScheduleBasedOnDate] [tinyint] NOT NULL,
[BSSI_Recog_Frequency] [smallint] NOT NULL,
[BSSI_CreateOneSchedule] [tinyint] NOT NULL,
[BSSI_RBLineTotalAmount] [numeric] (19, 5) NOT NULL,
[BSSI_BundleID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DefaultExtPrice] [numeric] (19, 5) NOT NULL,
[BSSI_DefaultExtPriceOrig] [numeric] (19, 5) NOT NULL,
[XTNDPRCE] [numeric] (19, 5) NOT NULL,
[OXTNDPRC] [numeric] (19, 5) NOT NULL,
[BSSI_VSOEExtPrice] [numeric] (19, 5) NOT NULL,
[BSSI_VSOEExtPriceOrig] [numeric] (19, 5) NOT NULL,
[BSSI_AREDContract_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DefaultDefStartDt1] [smallint] NOT NULL,
[BSSI_EBTemplateID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[BSSI_EBOnQty] [tinyint] NOT NULL,
[BSSI_EBRecog_Methods] [smallint] NOT NULL,
[BSSI_Recog_Acct_Index1] [int] NOT NULL,
[BSSI_Recognition_Amount] [numeric] (19, 5) NOT NULL,
[DUMYRCRD] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7133303] ADD CONSTRAINT [CK__B7133303__BSSI_D__2232F80F] CHECK ((datepart(hour,[BSSI_DeferralEndDate])=(0) AND datepart(minute,[BSSI_DeferralEndDate])=(0) AND datepart(second,[BSSI_DeferralEndDate])=(0) AND datepart(millisecond,[BSSI_DeferralEndDate])=(0)))
GO
ALTER TABLE [dbo].[B7133303] ADD CONSTRAINT [CK__B7133303__BSSI_D__213ED3D6] CHECK ((datepart(hour,[BSSI_DeferralStartDate])=(0) AND datepart(minute,[BSSI_DeferralStartDate])=(0) AND datepart(second,[BSSI_DeferralStartDate])=(0) AND datepart(millisecond,[BSSI_DeferralStartDate])=(0)))
GO
ALTER TABLE [dbo].[B7133303] ADD CONSTRAINT [CK__B7133303__DOCDAT__23271C48] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B7133303] ADD CONSTRAINT [PKB7133303] PRIMARY KEY CLUSTERED  ([SOPNUMBE], [SOPTYPE], [LNITMSEQ], [CMPNTSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B7133303] ON [dbo].[B7133303] ([SOPTYPE], [SOPNUMBE], [BSSI_BundleID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133303].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[CMPNTSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133303].[BSSI_DeferralStartDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133303].[BSSI_DeferralEndDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133303].[BSSI_Recog_TemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133303].[BSSI_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_RBLineSeqNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7133303].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_Deferrable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_Recog_Acct_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_ScheduleBasedOnDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_Recog_Frequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_CreateOneSchedule]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[BSSI_RBLineTotalAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133303].[BSSI_BundleID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[BSSI_DefaultExtPrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[BSSI_DefaultExtPriceOrig]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[XTNDPRCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[BSSI_VSOEExtPrice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[BSSI_VSOEExtPriceOrig]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133303].[BSSI_AREDContract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_DefaultDefStartDt1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7133303].[BSSI_EBTemplateID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_EBOnQty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_EBRecog_Methods]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[BSSI_Recog_Acct_Index1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7133303].[BSSI_Recognition_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7133303].[DUMYRCRD]'
GO
GRANT SELECT ON  [dbo].[B7133303] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7133303] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7133303] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7133303] TO [DYNGRP]
GO
