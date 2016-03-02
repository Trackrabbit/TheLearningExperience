SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0540101SS_1] (@BSSI_Facility_ID char(67), @VENDORID char(15), @MJW_Offering_ID char(21), @MJW_Series_ID char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investment_Number, MJW_Source, BSSI_Investment_Ref, MJW_Offering_ID, MJW_Series_ID, MJW_Accept_Date, MJW_Admit_Date, IMS_Commission_Paid_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, BSSI_InvestPercent, MJW_Units_Purchased, MJW_Unit_Price, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, SLPRSNID, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, BSSI_Reinvest_CB, BSSI_Facility_ID, NOTEINDX, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0540101 WHERE BSSI_Facility_ID = @BSSI_Facility_ID AND VENDORID = @VENDORID AND MJW_Offering_ID = @MJW_Offering_ID AND MJW_Series_ID = @MJW_Series_ID ORDER BY BSSI_Facility_ID ASC, VENDORID ASC, MJW_Offering_ID ASC, MJW_Series_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0540101SS_1] TO [DYNGRP]
GO
