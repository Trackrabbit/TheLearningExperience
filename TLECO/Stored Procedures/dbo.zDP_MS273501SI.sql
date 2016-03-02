SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273501SI] (@MSO_MerchantID char(51), @MSO_Tender int, @MSO_ProxyServerName char(201), @MSO_EngineGUID char(51), @MSO_ProgID char(51), @MSO_ProcessorID int, @MSO_Description char(51), @MSO_CheckbookID char(51), @MSO_VendorID char(21), @MSO_AVS tinyint, @MSO_AVSZIP tinyint, @MSO_ServerIPAddress char(201), @MSO_ServerPort int, @MSO_ServerPassword char(41), @MSO_PartnerID char(21), @MSO_ProxyID char(21), @MSO_ProxyPassword char(41), @MSO_ProxyPort char(5), @MSO_HubUserID char(21), @MSO_HubPassword char(41), @MSO_ConnectSecure tinyint, @MSO_DaysToExpire smallint, @MSO_Add_Freight_To_Docum tinyint, @MSO_Display_Freight_Docu tinyint, @MSO_Auto_Add_Freight smallint, @MSO_Freight_Amount numeric(19,5), @MSO_Freight_Percent numeric(19,5), @MSO_Add_Misc_To_Document tinyint, @MSO_Display_Misc_Documen tinyint, @MSO_Auto_Add_Misc smallint, @MSO_Misc_Amount numeric(19,5), @MSO_Misc_Percent numeric(19,5), @PRBTADCD char(15), @PRSTADCD char(15), @MSO_Denied_Batch_Name char(21), @MSO_Book_Equal_Ship tinyint, @MSO_Settlement_Time datetime, @MSO_AutoBookRenew tinyint, @MSO_RecurringBilling tinyint, @MSO_PartialShipping tinyint, @MSO_PartialSale tinyint, @MSO_Allow_Multi_Booking tinyint, @MSO_ConnectionString1 char(255), @MSO_ConnectionString2 char(255), @MSO_ConnectionString3 char(255), @MSO_ConnectionString4 char(255), @MSO_DisableReceipts tinyint, @MSO_TrxLevelPaymentTerms tinyint, @MSO_SaveToCustomerCard tinyint, @MSO_MerchantDesc char(101), @MSO_MerchantSvc char(101), @MSO_FailonCVV2 tinyint, @MSO_DefaultACHAutoBatch tinyint, @MSO_DefaultCCAutoBatch tinyint, @MSO_CCByShipToAddrSOP tinyint, @MSO_FOrderWFlowStatus smallint, @MSO_WarnUnappliedCash tinyint, @MSO_CCByBillToAddrSOP tinyint, @MSO_DefaultUserDefined tinyint, @MSO_MarkCustOnHold tinyint, @MSO_Merchant_State char(51), @NDS_Track smallint, @NDS_AvsAddrRequired tinyint, @NDS_ZipRequired tinyint, @MSO_IncludeKitItems tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273501 (MSO_MerchantID, MSO_Tender, MSO_ProxyServerName, MSO_EngineGUID, MSO_ProgID, MSO_ProcessorID, MSO_Description, MSO_CheckbookID, MSO_VendorID, MSO_AVS, MSO_AVSZIP, MSO_ServerIPAddress, MSO_ServerPort, MSO_ServerPassword, MSO_PartnerID, MSO_ProxyID, MSO_ProxyPassword, MSO_ProxyPort, MSO_HubUserID, MSO_HubPassword, MSO_ConnectSecure, MSO_DaysToExpire, MSO_Add_Freight_To_Docum, MSO_Display_Freight_Docu, MSO_Auto_Add_Freight, MSO_Freight_Amount, MSO_Freight_Percent, MSO_Add_Misc_To_Document, MSO_Display_Misc_Documen, MSO_Auto_Add_Misc, MSO_Misc_Amount, MSO_Misc_Percent, PRBTADCD, PRSTADCD, MSO_Denied_Batch_Name, MSO_Book_Equal_Ship, MSO_Settlement_Time, MSO_AutoBookRenew, MSO_RecurringBilling, MSO_PartialShipping, MSO_PartialSale, MSO_Allow_Multi_Booking, MSO_ConnectionString1, MSO_ConnectionString2, MSO_ConnectionString3, MSO_ConnectionString4, MSO_DisableReceipts, MSO_TrxLevelPaymentTerms, MSO_SaveToCustomerCard, MSO_MerchantDesc, MSO_MerchantSvc, MSO_FailonCVV2, MSO_DefaultACHAutoBatch, MSO_DefaultCCAutoBatch, MSO_CCByShipToAddrSOP, MSO_FOrderWFlowStatus, MSO_WarnUnappliedCash, MSO_CCByBillToAddrSOP, MSO_DefaultUserDefined, MSO_MarkCustOnHold, MSO_Merchant_State, NDS_Track, NDS_AvsAddrRequired, NDS_ZipRequired, MSO_IncludeKitItems) VALUES ( @MSO_MerchantID, @MSO_Tender, @MSO_ProxyServerName, @MSO_EngineGUID, @MSO_ProgID, @MSO_ProcessorID, @MSO_Description, @MSO_CheckbookID, @MSO_VendorID, @MSO_AVS, @MSO_AVSZIP, @MSO_ServerIPAddress, @MSO_ServerPort, @MSO_ServerPassword, @MSO_PartnerID, @MSO_ProxyID, @MSO_ProxyPassword, @MSO_ProxyPort, @MSO_HubUserID, @MSO_HubPassword, @MSO_ConnectSecure, @MSO_DaysToExpire, @MSO_Add_Freight_To_Docum, @MSO_Display_Freight_Docu, @MSO_Auto_Add_Freight, @MSO_Freight_Amount, @MSO_Freight_Percent, @MSO_Add_Misc_To_Document, @MSO_Display_Misc_Documen, @MSO_Auto_Add_Misc, @MSO_Misc_Amount, @MSO_Misc_Percent, @PRBTADCD, @PRSTADCD, @MSO_Denied_Batch_Name, @MSO_Book_Equal_Ship, @MSO_Settlement_Time, @MSO_AutoBookRenew, @MSO_RecurringBilling, @MSO_PartialShipping, @MSO_PartialSale, @MSO_Allow_Multi_Booking, @MSO_ConnectionString1, @MSO_ConnectionString2, @MSO_ConnectionString3, @MSO_ConnectionString4, @MSO_DisableReceipts, @MSO_TrxLevelPaymentTerms, @MSO_SaveToCustomerCard, @MSO_MerchantDesc, @MSO_MerchantSvc, @MSO_FailonCVV2, @MSO_DefaultACHAutoBatch, @MSO_DefaultCCAutoBatch, @MSO_CCByShipToAddrSOP, @MSO_FOrderWFlowStatus, @MSO_WarnUnappliedCash, @MSO_CCByBillToAddrSOP, @MSO_DefaultUserDefined, @MSO_MarkCustOnHold, @MSO_Merchant_State, @NDS_Track, @NDS_AvsAddrRequired, @NDS_ZipRequired, @MSO_IncludeKitItems) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273501SI] TO [DYNGRP]
GO