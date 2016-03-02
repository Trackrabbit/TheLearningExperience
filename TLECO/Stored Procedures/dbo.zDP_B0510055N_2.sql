SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510055N_2] (@BS int, @VENDORID char(15), @DEX_ROW_ID int, @VENDORID_RS char(15), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Source, MJW_Offering_ID, MJW_Series_ID, MJW_Admit_Date, MJW_Accept_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, MJW_Units_Purchased, MJW_Unit_Price, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, IMS_Commission_Paid_Date, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, SLPRSNID, BSSI_Reinvest_CB, BSSI_Temp_Field, BSSI_Facility_ID, RMDNUMWK, NOTEINDX, VCHNUMWK, SCHEDULE_NUMBER, BSSI_InvestBearing, BSSI_LastRevaluationAmou, MJW_Units_Sold, DEX_ROW_ID FROM .B0510055 WHERE ( VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Source, MJW_Offering_ID, MJW_Series_ID, MJW_Admit_Date, MJW_Accept_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, MJW_Units_Purchased, MJW_Unit_Price, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, IMS_Commission_Paid_Date, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, SLPRSNID, BSSI_Reinvest_CB, BSSI_Temp_Field, BSSI_Facility_ID, RMDNUMWK, NOTEINDX, VCHNUMWK, SCHEDULE_NUMBER, BSSI_InvestBearing, BSSI_LastRevaluationAmou, MJW_Units_Sold, DEX_ROW_ID FROM .B0510055 WHERE VENDORID = @VENDORID_RS AND ( VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Source, MJW_Offering_ID, MJW_Series_ID, MJW_Admit_Date, MJW_Accept_Date, VENDORID, MJW_Owner_Type_Code, MJW_Certificate_Number, MJW_Cancellation_Date, MJW_Closing_Date, MJW_Death_Date, MJW_Units_Purchased, MJW_Unit_Price, MJW_Original_Capital, MJW_Return_Capital, MJW_Transfer_Date, MJW_Transfer_Number, MJW_Redemption_Number, IMS_Commission_Paid_Date, IMS_Broker_ID, IMS_With_Holding_Account_1, IMS_With_Holding_Account_2, IMS_With_Holding_Account_3, IMS_With_Holding_Account_4, MJW_Adjusted_Capital, SLPRSNID, BSSI_Reinvest_CB, BSSI_Temp_Field, BSSI_Facility_ID, RMDNUMWK, NOTEINDX, VCHNUMWK, SCHEDULE_NUMBER, BSSI_InvestBearing, BSSI_LastRevaluationAmou, MJW_Units_Sold, DEX_ROW_ID FROM .B0510055 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( VENDORID = @VENDORID AND DEX_ROW_ID > @DEX_ROW_ID OR VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510055N_2] TO [DYNGRP]
GO
