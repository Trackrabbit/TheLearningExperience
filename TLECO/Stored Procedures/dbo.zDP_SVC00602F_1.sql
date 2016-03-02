SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00602F_1] (@CNTTYPE_RS char(11), @CNTTYPE_RE char(11)) AS  set nocount on IF @CNTTYPE_RS IS NULL BEGIN SELECT TOP 25  CNTTYPE, CNTTYPDESC, SRVTYPE, GL_Prepaid_Account, GL_Service_Account, ITEMNMBR, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Grace_Days, Meter_Bases_1, Meter_Bases_2, Meter_Bases_3, Meter_Bases_4, Meter_Bases_5, Meter_Overages_1, Meter_Overages_2, Meter_Overages_3, Meter_Overages_4, Meter_Overages_5, Meter_Overages_6, Meter_Overages_7, Meter_Overages_8, Meter_Overages_9, Meter_Overages_10, Meter_Overages_11, Meter_Overages_12, Meter_Overages_13, Meter_Overages_14, Meter_Overages_15, Meter_Overages_16, Meter_Overages_17, Meter_Overages_18, Meter_Overages_19, Meter_Overages_20, Meter_Charges_1, Meter_Charges_2, Meter_Charges_3, Meter_Charges_4, Meter_Charges_5, Meter_Charges_6, Meter_Charges_7, Meter_Charges_8, Meter_Charges_9, Meter_Charges_10, Meter_Charges_11, Meter_Charges_12, Meter_Charges_13, Meter_Charges_14, Meter_Charges_15, Meter_Charges_16, Meter_Charges_17, Meter_Charges_18, Meter_Charges_19, Meter_Charges_20, Meter_Expires_1, Meter_Expires_2, Meter_Expires_3, Meter_Expires_4, Meter_Expires_5, SVC_Invoice_Detail, PREPAID, SVC_Contract_Batch_ID, SVC_Contract_Document_ID, Contract_Response_Time, SVC_Discount_Flag, SVC_Discount_Account, SVC_C_Credit_Batch_ID, SVC_C_Credit_Document_ID, priorityLevel, svcBillingExchangeRate, svcRevenueExchangeRate, DEX_ROW_ID FROM .SVC00602 ORDER BY CNTTYPE ASC END ELSE IF @CNTTYPE_RS = @CNTTYPE_RE BEGIN SELECT TOP 25  CNTTYPE, CNTTYPDESC, SRVTYPE, GL_Prepaid_Account, GL_Service_Account, ITEMNMBR, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Grace_Days, Meter_Bases_1, Meter_Bases_2, Meter_Bases_3, Meter_Bases_4, Meter_Bases_5, Meter_Overages_1, Meter_Overages_2, Meter_Overages_3, Meter_Overages_4, Meter_Overages_5, Meter_Overages_6, Meter_Overages_7, Meter_Overages_8, Meter_Overages_9, Meter_Overages_10, Meter_Overages_11, Meter_Overages_12, Meter_Overages_13, Meter_Overages_14, Meter_Overages_15, Meter_Overages_16, Meter_Overages_17, Meter_Overages_18, Meter_Overages_19, Meter_Overages_20, Meter_Charges_1, Meter_Charges_2, Meter_Charges_3, Meter_Charges_4, Meter_Charges_5, Meter_Charges_6, Meter_Charges_7, Meter_Charges_8, Meter_Charges_9, Meter_Charges_10, Meter_Charges_11, Meter_Charges_12, Meter_Charges_13, Meter_Charges_14, Meter_Charges_15, Meter_Charges_16, Meter_Charges_17, Meter_Charges_18, Meter_Charges_19, Meter_Charges_20, Meter_Expires_1, Meter_Expires_2, Meter_Expires_3, Meter_Expires_4, Meter_Expires_5, SVC_Invoice_Detail, PREPAID, SVC_Contract_Batch_ID, SVC_Contract_Document_ID, Contract_Response_Time, SVC_Discount_Flag, SVC_Discount_Account, SVC_C_Credit_Batch_ID, SVC_C_Credit_Document_ID, priorityLevel, svcBillingExchangeRate, svcRevenueExchangeRate, DEX_ROW_ID FROM .SVC00602 WHERE CNTTYPE = @CNTTYPE_RS ORDER BY CNTTYPE ASC END ELSE BEGIN SELECT TOP 25  CNTTYPE, CNTTYPDESC, SRVTYPE, GL_Prepaid_Account, GL_Service_Account, ITEMNMBR, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Grace_Days, Meter_Bases_1, Meter_Bases_2, Meter_Bases_3, Meter_Bases_4, Meter_Bases_5, Meter_Overages_1, Meter_Overages_2, Meter_Overages_3, Meter_Overages_4, Meter_Overages_5, Meter_Overages_6, Meter_Overages_7, Meter_Overages_8, Meter_Overages_9, Meter_Overages_10, Meter_Overages_11, Meter_Overages_12, Meter_Overages_13, Meter_Overages_14, Meter_Overages_15, Meter_Overages_16, Meter_Overages_17, Meter_Overages_18, Meter_Overages_19, Meter_Overages_20, Meter_Charges_1, Meter_Charges_2, Meter_Charges_3, Meter_Charges_4, Meter_Charges_5, Meter_Charges_6, Meter_Charges_7, Meter_Charges_8, Meter_Charges_9, Meter_Charges_10, Meter_Charges_11, Meter_Charges_12, Meter_Charges_13, Meter_Charges_14, Meter_Charges_15, Meter_Charges_16, Meter_Charges_17, Meter_Charges_18, Meter_Charges_19, Meter_Charges_20, Meter_Expires_1, Meter_Expires_2, Meter_Expires_3, Meter_Expires_4, Meter_Expires_5, SVC_Invoice_Detail, PREPAID, SVC_Contract_Batch_ID, SVC_Contract_Document_ID, Contract_Response_Time, SVC_Discount_Flag, SVC_Discount_Account, SVC_C_Credit_Batch_ID, SVC_C_Credit_Document_ID, priorityLevel, svcBillingExchangeRate, svcRevenueExchangeRate, DEX_ROW_ID FROM .SVC00602 WHERE CNTTYPE BETWEEN @CNTTYPE_RS AND @CNTTYPE_RE ORDER BY CNTTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00602F_1] TO [DYNGRP]
GO
