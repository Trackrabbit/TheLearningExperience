SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0540102SS_1] (@VENDORID char(15), @MJW_Offering_ID char(21), @BSSI_Facility_ID char(67)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_ID, MJW_Series_ID, VENDORID, MJW_Units_Purchased, MJW_Original_Capital, MJW_Transfer_Number, SLPRSNID, MJW_Owner_Type_Code, CURNCYID, CURRNIDX, IMS_Broker_ID, BSSI_Facility_ID, MJW_Investment_Number, MJW_Unit_Price, MJW_Return_Capital, MJW_Adjusted_Capital, ERRDESCR, BSSI_Success, DEX_ROW_ID FROM .B0540102 WHERE VENDORID = @VENDORID AND MJW_Offering_ID = @MJW_Offering_ID AND BSSI_Facility_ID = @BSSI_Facility_ID ORDER BY VENDORID ASC, MJW_Offering_ID ASC, BSSI_Facility_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0540102SS_1] TO [DYNGRP]
GO
