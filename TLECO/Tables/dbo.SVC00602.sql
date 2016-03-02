CREATE TABLE [dbo].[SVC00602]
(
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTTYPDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GL_Prepaid_Account] [int] NOT NULL,
[GL_Service_Account] [int] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USECVPD_1] [tinyint] NOT NULL,
[USECVPD_2] [tinyint] NOT NULL,
[USECVPD_3] [tinyint] NOT NULL,
[USECVPD_4] [tinyint] NOT NULL,
[USECVPD_5] [tinyint] NOT NULL,
[USECVPD_6] [tinyint] NOT NULL,
[USECVPD_7] [tinyint] NOT NULL,
[Contract_Coverage_Period_1] [datetime] NOT NULL,
[Contract_Coverage_Period_2] [datetime] NOT NULL,
[Contract_Coverage_Period_3] [datetime] NOT NULL,
[Contract_Coverage_Period_4] [datetime] NOT NULL,
[Contract_Coverage_Period_5] [datetime] NOT NULL,
[Contract_Coverage_Period_6] [datetime] NOT NULL,
[Contract_Coverage_Period_7] [datetime] NOT NULL,
[CNTCOVPD_1] [datetime] NOT NULL,
[CNTCOVPD_2] [datetime] NOT NULL,
[CNTCOVPD_3] [datetime] NOT NULL,
[CNTCOVPD_4] [datetime] NOT NULL,
[CNTCOVPD_5] [datetime] NOT NULL,
[CNTCOVPD_6] [datetime] NOT NULL,
[CNTCOVPD_7] [datetime] NOT NULL,
[Grace_Days] [smallint] NOT NULL,
[Meter_Bases_1] [int] NOT NULL,
[Meter_Bases_2] [int] NOT NULL,
[Meter_Bases_3] [int] NOT NULL,
[Meter_Bases_4] [int] NOT NULL,
[Meter_Bases_5] [int] NOT NULL,
[Meter_Overages_1] [int] NOT NULL,
[Meter_Overages_2] [int] NOT NULL,
[Meter_Overages_3] [int] NOT NULL,
[Meter_Overages_4] [int] NOT NULL,
[Meter_Overages_5] [int] NOT NULL,
[Meter_Overages_6] [int] NOT NULL,
[Meter_Overages_7] [int] NOT NULL,
[Meter_Overages_8] [int] NOT NULL,
[Meter_Overages_9] [int] NOT NULL,
[Meter_Overages_10] [int] NOT NULL,
[Meter_Overages_11] [int] NOT NULL,
[Meter_Overages_12] [int] NOT NULL,
[Meter_Overages_13] [int] NOT NULL,
[Meter_Overages_14] [int] NOT NULL,
[Meter_Overages_15] [int] NOT NULL,
[Meter_Overages_16] [int] NOT NULL,
[Meter_Overages_17] [int] NOT NULL,
[Meter_Overages_18] [int] NOT NULL,
[Meter_Overages_19] [int] NOT NULL,
[Meter_Overages_20] [int] NOT NULL,
[Meter_Charges_1] [numeric] (19, 5) NOT NULL,
[Meter_Charges_2] [numeric] (19, 5) NOT NULL,
[Meter_Charges_3] [numeric] (19, 5) NOT NULL,
[Meter_Charges_4] [numeric] (19, 5) NOT NULL,
[Meter_Charges_5] [numeric] (19, 5) NOT NULL,
[Meter_Charges_6] [numeric] (19, 5) NOT NULL,
[Meter_Charges_7] [numeric] (19, 5) NOT NULL,
[Meter_Charges_8] [numeric] (19, 5) NOT NULL,
[Meter_Charges_9] [numeric] (19, 5) NOT NULL,
[Meter_Charges_10] [numeric] (19, 5) NOT NULL,
[Meter_Charges_11] [numeric] (19, 5) NOT NULL,
[Meter_Charges_12] [numeric] (19, 5) NOT NULL,
[Meter_Charges_13] [numeric] (19, 5) NOT NULL,
[Meter_Charges_14] [numeric] (19, 5) NOT NULL,
[Meter_Charges_15] [numeric] (19, 5) NOT NULL,
[Meter_Charges_16] [numeric] (19, 5) NOT NULL,
[Meter_Charges_17] [numeric] (19, 5) NOT NULL,
[Meter_Charges_18] [numeric] (19, 5) NOT NULL,
[Meter_Charges_19] [numeric] (19, 5) NOT NULL,
[Meter_Charges_20] [numeric] (19, 5) NOT NULL,
[Meter_Expires_1] [tinyint] NOT NULL,
[Meter_Expires_2] [tinyint] NOT NULL,
[Meter_Expires_3] [tinyint] NOT NULL,
[Meter_Expires_4] [tinyint] NOT NULL,
[Meter_Expires_5] [tinyint] NOT NULL,
[SVC_Invoice_Detail] [tinyint] NOT NULL,
[PREPAID] [tinyint] NOT NULL,
[SVC_Contract_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Contract_Response_Time] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Discount_Flag] [tinyint] NOT NULL,
[SVC_Discount_Account] [int] NOT NULL,
[SVC_C_Credit_Batch_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_C_Credit_Document_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[svcBillingExchangeRate] [smallint] NOT NULL,
[svcRevenueExchangeRate] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__CNTCOV__70547F4A] CHECK ((datepart(day,[CNTCOVPD_1])=(1) AND datepart(month,[CNTCOVPD_1])=(1) AND datepart(year,[CNTCOVPD_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__CNTCOV__7148A383] CHECK ((datepart(day,[CNTCOVPD_2])=(1) AND datepart(month,[CNTCOVPD_2])=(1) AND datepart(year,[CNTCOVPD_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__CNTCOV__723CC7BC] CHECK ((datepart(day,[CNTCOVPD_3])=(1) AND datepart(month,[CNTCOVPD_3])=(1) AND datepart(year,[CNTCOVPD_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__CNTCOV__7330EBF5] CHECK ((datepart(day,[CNTCOVPD_4])=(1) AND datepart(month,[CNTCOVPD_4])=(1) AND datepart(year,[CNTCOVPD_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__CNTCOV__7425102E] CHECK ((datepart(day,[CNTCOVPD_5])=(1) AND datepart(month,[CNTCOVPD_5])=(1) AND datepart(year,[CNTCOVPD_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__CNTCOV__75193467] CHECK ((datepart(day,[CNTCOVPD_6])=(1) AND datepart(month,[CNTCOVPD_6])=(1) AND datepart(year,[CNTCOVPD_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__CNTCOV__760D58A0] CHECK ((datepart(day,[CNTCOVPD_7])=(1) AND datepart(month,[CNTCOVPD_7])=(1) AND datepart(year,[CNTCOVPD_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__Contra__77017CD9] CHECK ((datepart(day,[Contract_Coverage_Period_1])=(1) AND datepart(month,[Contract_Coverage_Period_1])=(1) AND datepart(year,[Contract_Coverage_Period_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__Contra__77F5A112] CHECK ((datepart(day,[Contract_Coverage_Period_2])=(1) AND datepart(month,[Contract_Coverage_Period_2])=(1) AND datepart(year,[Contract_Coverage_Period_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__Contra__78E9C54B] CHECK ((datepart(day,[Contract_Coverage_Period_3])=(1) AND datepart(month,[Contract_Coverage_Period_3])=(1) AND datepart(year,[Contract_Coverage_Period_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__Contra__79DDE984] CHECK ((datepart(day,[Contract_Coverage_Period_4])=(1) AND datepart(month,[Contract_Coverage_Period_4])=(1) AND datepart(year,[Contract_Coverage_Period_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__Contra__7AD20DBD] CHECK ((datepart(day,[Contract_Coverage_Period_5])=(1) AND datepart(month,[Contract_Coverage_Period_5])=(1) AND datepart(year,[Contract_Coverage_Period_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__Contra__7BC631F6] CHECK ((datepart(day,[Contract_Coverage_Period_6])=(1) AND datepart(month,[Contract_Coverage_Period_6])=(1) AND datepart(year,[Contract_Coverage_Period_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [CK__SVC00602__Contra__7CBA562F] CHECK ((datepart(day,[Contract_Coverage_Period_7])=(1) AND datepart(month,[Contract_Coverage_Period_7])=(1) AND datepart(year,[Contract_Coverage_Period_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00602] ADD CONSTRAINT [PKSVC00602] PRIMARY KEY CLUSTERED  ([CNTTYPE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00602] ON [dbo].[SVC00602] ([CNTTYPDESC], [CNTTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[CNTTYPDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[GL_Prepaid_Account]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[GL_Service_Account]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[USECVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[USECVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[USECVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[USECVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[USECVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[USECVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[USECVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[Contract_Coverage_Period_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[Contract_Coverage_Period_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[Contract_Coverage_Period_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[Contract_Coverage_Period_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[Contract_Coverage_Period_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[Contract_Coverage_Period_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[Contract_Coverage_Period_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[CNTCOVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[CNTCOVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[CNTCOVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[CNTCOVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[CNTCOVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[CNTCOVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00602].[CNTCOVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Grace_Days]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Bases_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Bases_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Bases_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Bases_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Bases_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Overages_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00602].[Meter_Charges_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Expires_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Expires_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Expires_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Expires_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[Meter_Expires_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[SVC_Invoice_Detail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[PREPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[SVC_Contract_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[SVC_Contract_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[Contract_Response_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[SVC_Discount_Flag]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[SVC_Discount_Account]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[SVC_C_Credit_Batch_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00602].[SVC_C_Credit_Document_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[svcBillingExchangeRate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00602].[svcRevenueExchangeRate]'
GO
GRANT SELECT ON  [dbo].[SVC00602] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00602] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00602] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00602] TO [DYNGRP]
GO
