SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0530500SS_2] (@DSCRIPTN char(31)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Capital_Call_ID, DSCRIPTN, BSSI_Facility_ID, MJW_Offering_ID, BSSI_Fund_Owner_ID, MJW_Series_ID, DOCDATE, BSSI_Capital_Status_HDR, BSSI_Broker_ID, BSSI_Fund_Call_AP_Number, BSSI_Fund_Call_Amount, CURNCYID, CURRNIDX, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Commission_Amount, BSSI_Commission_Percent, BSSI_Fee_Amount, BSSI_Owner_Call_Date, BSSI_Owner_Info_Date, BSSI_Owner_Due_Date, BSSI_Owner_Maturity_Date, BSSI_Broker_Info_Date, BSSI_FundCallMaturityAmt, BSSI_Fund_Call_AP_Batch, BSSI_Fund_Call_AR_Number, BSSI_Total_Investment_Am, SLPRSNID, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0530500 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0530500SS_2] TO [DYNGRP]
GO