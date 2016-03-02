SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602943SI] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_Charge_ID char(25), @YEAR1 smallint, @PERIODID smallint, @STRTDATE datetime, @ENDDATE datetime, @BSSI_Billing_Frequency smallint, @SLSAMNT numeric(19,5), @BSSI_Sales_Amount numeric(19,5), @DISCAMNT numeric(19,5), @BSSI_Discount_Amount numeric(19,5), @BSSI_EasementID char(25), @BSSI_Charge_Escalation_A numeric(19,5), @DOCAMNT numeric(19,5), @BSSI_Average_SL_Amount numeric(19,5), @BSSI_Line_SL_Amount numeric(19,5), @BSSI_Total_Adjustment numeric(19,5), @BSSI_Total_SL_Adjustment numeric(19,5), @BSSI_Increase_Amount numeric(19,5), @BSSI_Description char(51), @BSSI_Invoiced tinyint, @DOCTYPE smallint, @VCHNUMWK char(17), @BSSI_Is_Multiple_Invoice tinyint, @BSSI_Is_SL_Created tinyint, @ERRDESCR char(131), @BSSI_Is_Prorate_First_Pe tinyint, @BSSI_Is_Prorate_Last_Per tinyint, @MDFUSRID char(15), @MODIFDT datetime, @LOCNCODE char(11), @JRNENTRY int, @BSSI_Escalation_Type smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602943 (BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, YEAR1, PERIODID, STRTDATE, ENDDATE, BSSI_Billing_Frequency, SLSAMNT, BSSI_Sales_Amount, DISCAMNT, BSSI_Discount_Amount, BSSI_EasementID, BSSI_Charge_Escalation_A, DOCAMNT, BSSI_Average_SL_Amount, BSSI_Line_SL_Amount, BSSI_Total_Adjustment, BSSI_Total_SL_Adjustment, BSSI_Increase_Amount, BSSI_Description, BSSI_Invoiced, DOCTYPE, VCHNUMWK, BSSI_Is_Multiple_Invoice, BSSI_Is_SL_Created, ERRDESCR, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, MDFUSRID, MODIFDT, LOCNCODE, JRNENTRY, BSSI_Escalation_Type) VALUES ( @BSSI_Ground_Lease_Number, @LNITMSEQ, @LNSEQNBR, @BSSI_Charge_ID, @YEAR1, @PERIODID, @STRTDATE, @ENDDATE, @BSSI_Billing_Frequency, @SLSAMNT, @BSSI_Sales_Amount, @DISCAMNT, @BSSI_Discount_Amount, @BSSI_EasementID, @BSSI_Charge_Escalation_A, @DOCAMNT, @BSSI_Average_SL_Amount, @BSSI_Line_SL_Amount, @BSSI_Total_Adjustment, @BSSI_Total_SL_Adjustment, @BSSI_Increase_Amount, @BSSI_Description, @BSSI_Invoiced, @DOCTYPE, @VCHNUMWK, @BSSI_Is_Multiple_Invoice, @BSSI_Is_SL_Created, @ERRDESCR, @BSSI_Is_Prorate_First_Pe, @BSSI_Is_Prorate_Last_Per, @MDFUSRID, @MODIFDT, @LOCNCODE, @JRNENTRY, @BSSI_Escalation_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602943SI] TO [DYNGRP]
GO