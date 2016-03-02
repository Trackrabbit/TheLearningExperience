SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0530500L_1] (@BSSI_Capital_Call_ID_RS char(25), @BSSI_Capital_Call_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Capital_Call_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, DSCRIPTN, BSSI_Facility_ID, MJW_Offering_ID, BSSI_Fund_Owner_ID, MJW_Series_ID, DOCDATE, BSSI_Capital_Status_HDR, BSSI_Broker_ID, BSSI_Fund_Call_AP_Number, BSSI_Fund_Call_Amount, CURNCYID, CURRNIDX, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Commission_Amount, BSSI_Commission_Percent, BSSI_Fee_Amount, BSSI_Owner_Call_Date, BSSI_Owner_Info_Date, BSSI_Owner_Due_Date, BSSI_Owner_Maturity_Date, BSSI_Broker_Info_Date, BSSI_FundCallMaturityAmt, BSSI_Fund_Call_AP_Batch, BSSI_Fund_Call_AR_Number, BSSI_Total_Investment_Am, SLPRSNID, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0530500 ORDER BY BSSI_Capital_Call_ID DESC END ELSE IF @BSSI_Capital_Call_ID_RS = @BSSI_Capital_Call_ID_RE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, DSCRIPTN, BSSI_Facility_ID, MJW_Offering_ID, BSSI_Fund_Owner_ID, MJW_Series_ID, DOCDATE, BSSI_Capital_Status_HDR, BSSI_Broker_ID, BSSI_Fund_Call_AP_Number, BSSI_Fund_Call_Amount, CURNCYID, CURRNIDX, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Commission_Amount, BSSI_Commission_Percent, BSSI_Fee_Amount, BSSI_Owner_Call_Date, BSSI_Owner_Info_Date, BSSI_Owner_Due_Date, BSSI_Owner_Maturity_Date, BSSI_Broker_Info_Date, BSSI_FundCallMaturityAmt, BSSI_Fund_Call_AP_Batch, BSSI_Fund_Call_AR_Number, BSSI_Total_Investment_Am, SLPRSNID, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0530500 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID_RS ORDER BY BSSI_Capital_Call_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, DSCRIPTN, BSSI_Facility_ID, MJW_Offering_ID, BSSI_Fund_Owner_ID, MJW_Series_ID, DOCDATE, BSSI_Capital_Status_HDR, BSSI_Broker_ID, BSSI_Fund_Call_AP_Number, BSSI_Fund_Call_Amount, CURNCYID, CURRNIDX, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Commission_Amount, BSSI_Commission_Percent, BSSI_Fee_Amount, BSSI_Owner_Call_Date, BSSI_Owner_Info_Date, BSSI_Owner_Due_Date, BSSI_Owner_Maturity_Date, BSSI_Broker_Info_Date, BSSI_FundCallMaturityAmt, BSSI_Fund_Call_AP_Batch, BSSI_Fund_Call_AR_Number, BSSI_Total_Investment_Am, SLPRSNID, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0530500 WHERE BSSI_Capital_Call_ID BETWEEN @BSSI_Capital_Call_ID_RS AND @BSSI_Capital_Call_ID_RE ORDER BY BSSI_Capital_Call_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0530500L_1] TO [DYNGRP]
GO
