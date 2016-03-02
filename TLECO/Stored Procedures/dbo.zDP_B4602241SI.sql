SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602241SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @BSSI_Charge_ID char(25), @BSSI_Escalation_ID char(25), @STRTDATE datetime, @ACTSTARTDATE datetime, @ENDDATE datetime, @BSSI_Is_Prorate_First_Pe tinyint, @BSSI_Is_Prorate_Last_Per tinyint, @BSSI_Sales_Amount numeric(19,5), @BSSI_Discount_Amount numeric(19,5), @SLSAMNT numeric(19,5), @DISCAMNT numeric(19,5), @BSSI_Anniversary_Date_Ty smallint, @BSSI_Anniversary_Date datetime, @BSSI_Create_InvoicedLadj tinyint, @BSSI_Disable_Month_Start tinyint, @BSSI_Not_Extendable tinyint, @BSSI_Calculate_Straight_ tinyint, @BSSI_Adjust_SL_Num_Perio tinyint, @BSSI_SL_Calc_Option smallint, @BSSI_SL_Start_Date datetime, @BSSI_SL_End_Date datetime, @BSSI_SL_First_ProRated numeric(19,5), @BSSI_SL_Last_ProRated numeric(19,5), @BSSI_Total_SL_Amount numeric(19,5), @BSSI_Average_SL_Amount numeric(19,5), @BSSI_NumberOfPeriods numeric(19,5), @NUMOFPER smallint, @NOTEINDX numeric(19,5), @BSSI_NoAmendProration tinyint, @BSSI_SpecialDeferralCal tinyint, @BSSI_StraightLineDeferra tinyint, @BSSI_Create_InvSLAdj tinyint, @BSSI_Create_InvoicedLadj1 tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602241 (BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, BSSI_Charge_ID, BSSI_Escalation_ID, STRTDATE, ACTSTARTDATE, ENDDATE, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, BSSI_Sales_Amount, BSSI_Discount_Amount, SLSAMNT, DISCAMNT, BSSI_Anniversary_Date_Ty, BSSI_Anniversary_Date, BSSI_Create_InvoicedLadj, BSSI_Disable_Month_Start, BSSI_Not_Extendable, BSSI_Calculate_Straight_, BSSI_Adjust_SL_Num_Perio, BSSI_SL_Calc_Option, BSSI_SL_Start_Date, BSSI_SL_End_Date, BSSI_SL_First_ProRated, BSSI_SL_Last_ProRated, BSSI_Total_SL_Amount, BSSI_Average_SL_Amount, BSSI_NumberOfPeriods, NUMOFPER, NOTEINDX, BSSI_NoAmendProration, BSSI_SpecialDeferralCal, BSSI_StraightLineDeferra, BSSI_Create_InvSLAdj, BSSI_Create_InvoicedLadj1) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNITMSEQ, @BSSI_Charge_ID, @BSSI_Escalation_ID, @STRTDATE, @ACTSTARTDATE, @ENDDATE, @BSSI_Is_Prorate_First_Pe, @BSSI_Is_Prorate_Last_Per, @BSSI_Sales_Amount, @BSSI_Discount_Amount, @SLSAMNT, @DISCAMNT, @BSSI_Anniversary_Date_Ty, @BSSI_Anniversary_Date, @BSSI_Create_InvoicedLadj, @BSSI_Disable_Month_Start, @BSSI_Not_Extendable, @BSSI_Calculate_Straight_, @BSSI_Adjust_SL_Num_Perio, @BSSI_SL_Calc_Option, @BSSI_SL_Start_Date, @BSSI_SL_End_Date, @BSSI_SL_First_ProRated, @BSSI_SL_Last_ProRated, @BSSI_Total_SL_Amount, @BSSI_Average_SL_Amount, @BSSI_NumberOfPeriods, @NUMOFPER, @NOTEINDX, @BSSI_NoAmendProration, @BSSI_SpecialDeferralCal, @BSSI_StraightLineDeferra, @BSSI_Create_InvSLAdj, @BSSI_Create_InvoicedLadj1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602241SI] TO [DYNGRP]
GO