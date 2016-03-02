SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273501SS_2] (@MSO_ProgID char(51)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_MerchantID, MSO_Tender, MSO_ProxyServerName, MSO_EngineGUID, MSO_ProgID, MSO_ProcessorID, MSO_Description, MSO_CheckbookID, MSO_VendorID, MSO_AVS, MSO_AVSZIP, MSO_ServerIPAddress, MSO_ServerPort, MSO_ServerPassword, MSO_PartnerID, MSO_ProxyID, MSO_ProxyPassword, MSO_ProxyPort, MSO_HubUserID, MSO_HubPassword, MSO_ConnectSecure, MSO_DaysToExpire, MSO_Add_Freight_To_Docum, MSO_Display_Freight_Docu, MSO_Auto_Add_Freight, MSO_Freight_Amount, MSO_Freight_Percent, MSO_Add_Misc_To_Document, MSO_Display_Misc_Documen, MSO_Auto_Add_Misc, MSO_Misc_Amount, MSO_Misc_Percent, PRBTADCD, PRSTADCD, MSO_Denied_Batch_Name, MSO_Book_Equal_Ship, MSO_Settlement_Time, MSO_AutoBookRenew, MSO_RecurringBilling, MSO_PartialShipping, MSO_PartialSale, MSO_Allow_Multi_Booking, MSO_ConnectionString1, MSO_ConnectionString2, MSO_ConnectionString3, MSO_ConnectionString4, MSO_DisableReceipts, MSO_TrxLevelPaymentTerms, MSO_SaveToCustomerCard, MSO_MerchantDesc, MSO_MerchantSvc, MSO_FailonCVV2, MSO_DefaultACHAutoBatch, MSO_DefaultCCAutoBatch, MSO_CCByShipToAddrSOP, MSO_FOrderWFlowStatus, MSO_WarnUnappliedCash, MSO_CCByBillToAddrSOP, MSO_DefaultUserDefined, MSO_MarkCustOnHold, MSO_Merchant_State, NDS_Track, NDS_AvsAddrRequired, NDS_ZipRequired, MSO_IncludeKitItems, DEX_ROW_ID FROM .MS273501 WHERE MSO_ProgID = @MSO_ProgID ORDER BY MSO_ProgID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273501SS_2] TO [DYNGRP]
GO
