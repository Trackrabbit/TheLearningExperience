SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510130SS_5] (@BSSI_Capital_Call_ID char(25), @DOCDATE datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_Test, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, BSSI_Fund_Call_AR_Number, DEX_ROW_ID FROM .B0510130 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND DOCDATE = @DOCDATE ORDER BY BSSI_Capital_Call_ID ASC, DOCDATE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510130SS_5] TO [DYNGRP]
GO