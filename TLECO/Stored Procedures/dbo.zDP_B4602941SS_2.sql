SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602941SS_2] (@BSSI_Ground_Lease_Number char(25), @BSSI_Charge_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Charge_ID, BSSI_Escalation_ID, STRTDATE, ACTSTARTDATE, ENDDATE, BSSI_Is_Prorate_First_Pe, BSSI_Is_Prorate_Last_Per, BSSI_Sales_Amount, BSSI_Discount_Amount, SLSAMNT, DISCAMNT, BSSI_Anniversary_Date_Ty, BSSI_Anniversary_Date, BSSI_Create_InvoicedLadj, BSSI_Disable_Month_Start, BSSI_Not_Extendable, BSSI_Calculate_Straight_, BSSI_Adjust_SL_Num_Perio, BSSI_SL_Calc_Option, BSSI_SL_Start_Date, BSSI_SL_End_Date, BSSI_SL_First_ProRated, BSSI_SL_Last_ProRated, BSSI_Total_SL_Amount, BSSI_Average_SL_Amount, BSSI_NumberOfPeriods, BSSI_NoAmendProration, BSSI_SpecialDeferralCal, BSSI_StraightLineDeferra, BSSI_Dummy, BSSI_Create_InvSLAdj, NOTEINDX, DEX_ROW_ID FROM .B4602941 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID ORDER BY BSSI_Ground_Lease_Number ASC, BSSI_Charge_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602941SS_2] TO [DYNGRP]
GO
