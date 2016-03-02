SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510055SS_7] (@MJW_Cancellation_Date datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investment_Number, MJW_Source, MJW_Offering_ID, MJW_Series_ID, MJW_Admit_Date, MJW_Accept_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, MJW_Units_Purchased, MJW_Unit_Price, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, IMS_Commission_Paid_Date, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, SLPRSNID, BSSI_Reinvest_CB, BSSI_Temp_Field, BSSI_Facility_ID, RMDNUMWK, NOTEINDX, VCHNUMWK, SCHEDULE_NUMBER, BSSI_InvestBearing, BSSI_LastRevaluationAmou, MJW_Units_Sold, DEX_ROW_ID FROM .B0510055 WHERE MJW_Cancellation_Date = @MJW_Cancellation_Date ORDER BY MJW_Cancellation_Date ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510055SS_7] TO [DYNGRP]
GO
