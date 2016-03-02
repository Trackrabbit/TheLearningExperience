SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0540102SI] (@MJW_Offering_ID char(21), @MJW_Series_ID char(21), @VENDORID char(15), @MJW_Units_Purchased numeric(19,5), @MJW_Original_Capital numeric(19,5), @MJW_Transfer_Number char(21), @SLPRSNID char(15), @MJW_Owner_Type_Code char(21), @CURNCYID char(15), @CURRNIDX smallint, @IMS_Broker_ID char(15), @BSSI_Facility_ID char(67), @MJW_Investment_Number char(21), @MJW_Unit_Price numeric(19,5), @MJW_Return_Capital numeric(19,5), @MJW_Adjusted_Capital numeric(19,5), @ERRDESCR char(131), @BSSI_Success tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0540102 (MJW_Offering_ID, MJW_Series_ID, VENDORID, MJW_Units_Purchased, MJW_Original_Capital, MJW_Transfer_Number, SLPRSNID, MJW_Owner_Type_Code, CURNCYID, CURRNIDX, IMS_Broker_ID, BSSI_Facility_ID, MJW_Investment_Number, MJW_Unit_Price, MJW_Return_Capital, MJW_Adjusted_Capital, ERRDESCR, BSSI_Success) VALUES ( @MJW_Offering_ID, @MJW_Series_ID, @VENDORID, @MJW_Units_Purchased, @MJW_Original_Capital, @MJW_Transfer_Number, @SLPRSNID, @MJW_Owner_Type_Code, @CURNCYID, @CURRNIDX, @IMS_Broker_ID, @BSSI_Facility_ID, @MJW_Investment_Number, @MJW_Unit_Price, @MJW_Return_Capital, @MJW_Adjusted_Capital, @ERRDESCR, @BSSI_Success) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0540102SI] TO [DYNGRP]
GO
