SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510130SS_3] (@MJW_Offering_ID char(21), @IMS_Type_of_Distribution smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Distribution_Number, MJW_Distribution_Descrip, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, MJW_Amount_To_Distribute, BACHNUMB, MJW_Distribution_Type, PERIODID, MJW_Period_From_Date, MJW_Period_To_Date, BSSI_Liquidation_Date, MJW_Interest_Paid_Days, IMS_Type_of_Distribution, IMS_Amount_Type, IMS_Percent_Distribute, MJW_Preferred_Returns, MJW_Investor_ID, MJW_Invesmentt_Num_From, MJW_Investment_Number_To, NOTEINDX, BSSI_Test, BSSI_AR_Batch, BSSI_Capital_Call_ID, DSCRIPTN, DOCDATE, BSSI_Facility_ID, CURNCYID, CURRNIDX, DUMYRCRD, BSSI_Fund_Call_AR_Number, DEX_ROW_ID FROM .B0510130 WHERE MJW_Offering_ID = @MJW_Offering_ID AND IMS_Type_of_Distribution = @IMS_Type_of_Distribution ORDER BY MJW_Offering_ID ASC, IMS_Type_of_Distribution ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510130SS_3] TO [DYNGRP]
GO
