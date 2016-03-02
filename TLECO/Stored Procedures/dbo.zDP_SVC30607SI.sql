SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30607SI] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @Meter_Bases_1 int, @Meter_Bases_2 int, @Meter_Bases_3 int, @Meter_Bases_4 int, @Meter_Bases_5 int, @Meter_Overages_1 int, @Meter_Overages_2 int, @Meter_Overages_3 int, @Meter_Overages_4 int, @Meter_Overages_5 int, @Meter_Overages_6 int, @Meter_Overages_7 int, @Meter_Overages_8 int, @Meter_Overages_9 int, @Meter_Overages_10 int, @Meter_Overages_11 int, @Meter_Overages_12 int, @Meter_Overages_13 int, @Meter_Overages_14 int, @Meter_Overages_15 int, @Meter_Overages_16 int, @Meter_Overages_17 int, @Meter_Overages_18 int, @Meter_Overages_19 int, @Meter_Overages_20 int, @Meter_Charges_1 numeric(19,5), @Meter_Charges_2 numeric(19,5), @Meter_Charges_3 numeric(19,5), @Meter_Charges_4 numeric(19,5), @Meter_Charges_5 numeric(19,5), @Meter_Charges_6 numeric(19,5), @Meter_Charges_7 numeric(19,5), @Meter_Charges_8 numeric(19,5), @Meter_Charges_9 numeric(19,5), @Meter_Charges_10 numeric(19,5), @Meter_Charges_11 numeric(19,5), @Meter_Charges_12 numeric(19,5), @Meter_Charges_13 numeric(19,5), @Meter_Charges_14 numeric(19,5), @Meter_Charges_15 numeric(19,5), @Meter_Charges_16 numeric(19,5), @Meter_Charges_17 numeric(19,5), @Meter_Charges_18 numeric(19,5), @Meter_Charges_19 numeric(19,5), @Meter_Charges_20 numeric(19,5), @Meter_Expires_1 tinyint, @Meter_Expires_2 tinyint, @Meter_Expires_3 tinyint, @Meter_Expires_4 tinyint, @Meter_Expires_5 tinyint, @Meter_Internal_Uses_1 int, @Meter_Internal_Uses_2 int, @Meter_Internal_Uses_3 int, @Meter_Internal_Uses_4 int, @Meter_Internal_Uses_5 int, @Meter_Actuals_1 int, @Meter_Actuals_2 int, @Meter_Actuals_3 int, @Meter_Actuals_4 int, @Meter_Actuals_5 int, @Meter_Startings_1 int, @Meter_Startings_2 int, @Meter_Startings_3 int, @Meter_Startings_4 int, @Meter_Startings_5 int, @Amount_To_Invoice numeric(19,5), @Invoiced_Amount numeric(19,5), @Total_Invoiced numeric(19,5), @INVODATE datetime, @Orig_Amount_To_Invoice numeric(19,5), @Orig_Invoiced_Amount numeric(19,5), @OrigTotalInvoiced numeric(19,5), @Originating_Meter_Charge_1 numeric(19,5), @Originating_Meter_Charge_2 numeric(19,5), @Originating_Meter_Charge_3 numeric(19,5), @Originating_Meter_Charge_4 numeric(19,5), @Originating_Meter_Charge_5 numeric(19,5), @Originating_Meter_Charge_6 numeric(19,5), @Originating_Meter_Charge_7 numeric(19,5), @Originating_Meter_Charge_8 numeric(19,5), @Originating_Meter_Charge_9 numeric(19,5), @Originating_Meter_Charge_10 numeric(19,5), @Originating_Meter_Charge_11 numeric(19,5), @Originating_Meter_Charge_12 numeric(19,5), @Originating_Meter_Charge_13 numeric(19,5), @Originating_Meter_Charge_14 numeric(19,5), @Originating_Meter_Charge_15 numeric(19,5), @Originating_Meter_Charge_16 numeric(19,5), @Originating_Meter_Charge_17 numeric(19,5), @Originating_Meter_Charge_18 numeric(19,5), @Originating_Meter_Charge_19 numeric(19,5), @Originating_Meter_Charge_20 numeric(19,5), @SVC_Contract_Version smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC30607 (CONSTS, CONTNBR, LNSEQNBR, Meter_Bases_1, Meter_Bases_2, Meter_Bases_3, Meter_Bases_4, Meter_Bases_5, Meter_Overages_1, Meter_Overages_2, Meter_Overages_3, Meter_Overages_4, Meter_Overages_5, Meter_Overages_6, Meter_Overages_7, Meter_Overages_8, Meter_Overages_9, Meter_Overages_10, Meter_Overages_11, Meter_Overages_12, Meter_Overages_13, Meter_Overages_14, Meter_Overages_15, Meter_Overages_16, Meter_Overages_17, Meter_Overages_18, Meter_Overages_19, Meter_Overages_20, Meter_Charges_1, Meter_Charges_2, Meter_Charges_3, Meter_Charges_4, Meter_Charges_5, Meter_Charges_6, Meter_Charges_7, Meter_Charges_8, Meter_Charges_9, Meter_Charges_10, Meter_Charges_11, Meter_Charges_12, Meter_Charges_13, Meter_Charges_14, Meter_Charges_15, Meter_Charges_16, Meter_Charges_17, Meter_Charges_18, Meter_Charges_19, Meter_Charges_20, Meter_Expires_1, Meter_Expires_2, Meter_Expires_3, Meter_Expires_4, Meter_Expires_5, Meter_Internal_Uses_1, Meter_Internal_Uses_2, Meter_Internal_Uses_3, Meter_Internal_Uses_4, Meter_Internal_Uses_5, Meter_Actuals_1, Meter_Actuals_2, Meter_Actuals_3, Meter_Actuals_4, Meter_Actuals_5, Meter_Startings_1, Meter_Startings_2, Meter_Startings_3, Meter_Startings_4, Meter_Startings_5, Amount_To_Invoice, Invoiced_Amount, Total_Invoiced, INVODATE, Orig_Amount_To_Invoice, Orig_Invoiced_Amount, OrigTotalInvoiced, Originating_Meter_Charge_1, Originating_Meter_Charge_2, Originating_Meter_Charge_3, Originating_Meter_Charge_4, Originating_Meter_Charge_5, Originating_Meter_Charge_6, Originating_Meter_Charge_7, Originating_Meter_Charge_8, Originating_Meter_Charge_9, Originating_Meter_Charge_10, Originating_Meter_Charge_11, Originating_Meter_Charge_12, Originating_Meter_Charge_13, Originating_Meter_Charge_14, Originating_Meter_Charge_15, Originating_Meter_Charge_16, Originating_Meter_Charge_17, Originating_Meter_Charge_18, Originating_Meter_Charge_19, Originating_Meter_Charge_20, SVC_Contract_Version) VALUES ( @CONSTS, @CONTNBR, @LNSEQNBR, @Meter_Bases_1, @Meter_Bases_2, @Meter_Bases_3, @Meter_Bases_4, @Meter_Bases_5, @Meter_Overages_1, @Meter_Overages_2, @Meter_Overages_3, @Meter_Overages_4, @Meter_Overages_5, @Meter_Overages_6, @Meter_Overages_7, @Meter_Overages_8, @Meter_Overages_9, @Meter_Overages_10, @Meter_Overages_11, @Meter_Overages_12, @Meter_Overages_13, @Meter_Overages_14, @Meter_Overages_15, @Meter_Overages_16, @Meter_Overages_17, @Meter_Overages_18, @Meter_Overages_19, @Meter_Overages_20, @Meter_Charges_1, @Meter_Charges_2, @Meter_Charges_3, @Meter_Charges_4, @Meter_Charges_5, @Meter_Charges_6, @Meter_Charges_7, @Meter_Charges_8, @Meter_Charges_9, @Meter_Charges_10, @Meter_Charges_11, @Meter_Charges_12, @Meter_Charges_13, @Meter_Charges_14, @Meter_Charges_15, @Meter_Charges_16, @Meter_Charges_17, @Meter_Charges_18, @Meter_Charges_19, @Meter_Charges_20, @Meter_Expires_1, @Meter_Expires_2, @Meter_Expires_3, @Meter_Expires_4, @Meter_Expires_5, @Meter_Internal_Uses_1, @Meter_Internal_Uses_2, @Meter_Internal_Uses_3, @Meter_Internal_Uses_4, @Meter_Internal_Uses_5, @Meter_Actuals_1, @Meter_Actuals_2, @Meter_Actuals_3, @Meter_Actuals_4, @Meter_Actuals_5, @Meter_Startings_1, @Meter_Startings_2, @Meter_Startings_3, @Meter_Startings_4, @Meter_Startings_5, @Amount_To_Invoice, @Invoiced_Amount, @Total_Invoiced, @INVODATE, @Orig_Amount_To_Invoice, @Orig_Invoiced_Amount, @OrigTotalInvoiced, @Originating_Meter_Charge_1, @Originating_Meter_Charge_2, @Originating_Meter_Charge_3, @Originating_Meter_Charge_4, @Originating_Meter_Charge_5, @Originating_Meter_Charge_6, @Originating_Meter_Charge_7, @Originating_Meter_Charge_8, @Originating_Meter_Charge_9, @Originating_Meter_Charge_10, @Originating_Meter_Charge_11, @Originating_Meter_Charge_12, @Originating_Meter_Charge_13, @Originating_Meter_Charge_14, @Originating_Meter_Charge_15, @Originating_Meter_Charge_16, @Originating_Meter_Charge_17, @Originating_Meter_Charge_18, @Originating_Meter_Charge_19, @Originating_Meter_Charge_20, @SVC_Contract_Version) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30607SI] TO [DYNGRP]
GO