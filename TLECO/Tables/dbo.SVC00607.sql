CREATE TABLE [dbo].[SVC00607]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
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
[Meter_Internal_Uses_1] [int] NOT NULL,
[Meter_Internal_Uses_2] [int] NOT NULL,
[Meter_Internal_Uses_3] [int] NOT NULL,
[Meter_Internal_Uses_4] [int] NOT NULL,
[Meter_Internal_Uses_5] [int] NOT NULL,
[Meter_Actuals_1] [int] NOT NULL,
[Meter_Actuals_2] [int] NOT NULL,
[Meter_Actuals_3] [int] NOT NULL,
[Meter_Actuals_4] [int] NOT NULL,
[Meter_Actuals_5] [int] NOT NULL,
[Meter_Startings_1] [int] NOT NULL,
[Meter_Startings_2] [int] NOT NULL,
[Meter_Startings_3] [int] NOT NULL,
[Meter_Startings_4] [int] NOT NULL,
[Meter_Startings_5] [int] NOT NULL,
[Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Total_Invoiced] [numeric] (19, 5) NOT NULL,
[INVODATE] [datetime] NOT NULL,
[Orig_Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[Orig_Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[OrigTotalInvoiced] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_1] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_2] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_3] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_4] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_5] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_6] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_7] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_8] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_9] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_10] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_11] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_12] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_13] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_14] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_15] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_16] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_17] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_18] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_19] [numeric] (19, 5) NOT NULL,
[Originating_Meter_Charge_20] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00607] ADD CONSTRAINT [CK__SVC00607__INVODA__0FCD2AA3] CHECK ((datepart(hour,[INVODATE])=(0) AND datepart(minute,[INVODATE])=(0) AND datepart(second,[INVODATE])=(0) AND datepart(millisecond,[INVODATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00607] ADD CONSTRAINT [PKSVC00607] PRIMARY KEY NONCLUSTERED  ([CONSTS], [CONTNBR], [LNSEQNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00607].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Bases_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Bases_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Bases_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Bases_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Bases_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Overages_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Meter_Charges_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Expires_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Expires_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Expires_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Expires_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Expires_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Internal_Uses_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Internal_Uses_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Internal_Uses_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Internal_Uses_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Internal_Uses_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Actuals_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Actuals_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Actuals_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Actuals_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Actuals_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Startings_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Startings_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Startings_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Startings_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00607].[Meter_Startings_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Total_Invoiced]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00607].[INVODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Orig_Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[OrigTotalInvoiced]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00607].[Originating_Meter_Charge_20]'
GO
GRANT SELECT ON  [dbo].[SVC00607] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00607] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00607] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00607] TO [DYNGRP]
GO
