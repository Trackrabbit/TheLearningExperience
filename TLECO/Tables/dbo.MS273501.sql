CREATE TABLE [dbo].[MS273501]
(
[MSO_MerchantID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Tender] [int] NOT NULL,
[MSO_ProxyServerName] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ProgID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ProcessorID] [int] NOT NULL,
[MSO_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CheckbookID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_VendorID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_AVS] [tinyint] NOT NULL,
[MSO_AVSZIP] [tinyint] NOT NULL,
[MSO_ServerIPAddress] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ServerPort] [int] NOT NULL,
[MSO_ServerPassword] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_PartnerID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ProxyID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ProxyPassword] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ProxyPort] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_HubUserID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_HubPassword] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ConnectSecure] [tinyint] NOT NULL,
[MSO_DaysToExpire] [smallint] NOT NULL,
[MSO_Add_Freight_To_Docum] [tinyint] NOT NULL,
[MSO_Display_Freight_Docu] [tinyint] NOT NULL,
[MSO_Auto_Add_Freight] [smallint] NOT NULL,
[MSO_Freight_Amount] [numeric] (19, 5) NOT NULL,
[MSO_Freight_Percent] [numeric] (19, 5) NOT NULL,
[MSO_Add_Misc_To_Document] [tinyint] NOT NULL,
[MSO_Display_Misc_Documen] [tinyint] NOT NULL,
[MSO_Auto_Add_Misc] [smallint] NOT NULL,
[MSO_Misc_Amount] [numeric] (19, 5) NOT NULL,
[MSO_Misc_Percent] [numeric] (19, 5) NOT NULL,
[PRBTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Denied_Batch_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Book_Equal_Ship] [tinyint] NOT NULL,
[MSO_Settlement_Time] [datetime] NOT NULL,
[MSO_AutoBookRenew] [tinyint] NOT NULL,
[MSO_RecurringBilling] [tinyint] NOT NULL,
[MSO_PartialShipping] [tinyint] NOT NULL,
[MSO_PartialSale] [tinyint] NOT NULL,
[MSO_Allow_Multi_Booking] [tinyint] NOT NULL,
[MSO_ConnectionString1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ConnectionString2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ConnectionString3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ConnectionString4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DisableReceipts] [tinyint] NOT NULL,
[MSO_TrxLevelPaymentTerms] [tinyint] NOT NULL,
[MSO_SaveToCustomerCard] [tinyint] NOT NULL,
[MSO_MerchantDesc] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_MerchantSvc] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_FailonCVV2] [tinyint] NOT NULL,
[MSO_DefaultACHAutoBatch] [tinyint] NOT NULL,
[MSO_DefaultCCAutoBatch] [tinyint] NOT NULL,
[MSO_CCByShipToAddrSOP] [tinyint] NOT NULL,
[MSO_FOrderWFlowStatus] [smallint] NOT NULL,
[MSO_WarnUnappliedCash] [tinyint] NOT NULL,
[MSO_CCByBillToAddrSOP] [tinyint] NOT NULL,
[MSO_DefaultUserDefined] [tinyint] NOT NULL,
[MSO_MarkCustOnHold] [tinyint] NOT NULL,
[MSO_Merchant_State] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NDS_Track] [smallint] NOT NULL,
[NDS_AvsAddrRequired] [tinyint] NOT NULL,
[NDS_ZipRequired] [tinyint] NOT NULL,
[MSO_IncludeKitItems] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273501] ADD CONSTRAINT [CK__MS273501__MSO_Se__6332ED7C] CHECK ((datepart(day,[MSO_Settlement_Time])=(1) AND datepart(month,[MSO_Settlement_Time])=(1) AND datepart(year,[MSO_Settlement_Time])=(1900)))
GO
ALTER TABLE [dbo].[MS273501] ADD CONSTRAINT [PKMS273501] PRIMARY KEY NONCLUSTERED  ([MSO_EngineGUID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4MS273501] ON [dbo].[MS273501] ([MSO_Description]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3MS273501] ON [dbo].[MS273501] ([MSO_EngineGUID], [MSO_CheckbookID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2MS273501] ON [dbo].[MS273501] ([MSO_ProgID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_MerchantID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Tender]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ProxyServerName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ProgID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_ProcessorID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_CheckbookID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_VendorID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_AVS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_AVSZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ServerIPAddress]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_ServerPort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ServerPassword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_PartnerID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ProxyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ProxyPassword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ProxyPort]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_HubUserID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_HubPassword]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_ConnectSecure]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_DaysToExpire]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Add_Freight_To_Docum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Display_Freight_Docu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Auto_Add_Freight]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273501].[MSO_Freight_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273501].[MSO_Freight_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Add_Misc_To_Document]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Display_Misc_Documen]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Auto_Add_Misc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273501].[MSO_Misc_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273501].[MSO_Misc_Percent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[PRBTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[PRSTADCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_Denied_Batch_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Book_Equal_Ship]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273501].[MSO_Settlement_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_AutoBookRenew]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_RecurringBilling]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_PartialShipping]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_PartialSale]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_Allow_Multi_Booking]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ConnectionString1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ConnectionString2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ConnectionString3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_ConnectionString4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_DisableReceipts]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_TrxLevelPaymentTerms]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_SaveToCustomerCard]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_MerchantDesc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_MerchantSvc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_FailonCVV2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_DefaultACHAutoBatch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_DefaultCCAutoBatch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_CCByShipToAddrSOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_FOrderWFlowStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_WarnUnappliedCash]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_CCByBillToAddrSOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_DefaultUserDefined]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_MarkCustOnHold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273501].[MSO_Merchant_State]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[NDS_Track]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[NDS_AvsAddrRequired]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[NDS_ZipRequired]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273501].[MSO_IncludeKitItems]'
GO
GRANT SELECT ON  [dbo].[MS273501] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273501] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273501] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273501] TO [DYNGRP]
GO
