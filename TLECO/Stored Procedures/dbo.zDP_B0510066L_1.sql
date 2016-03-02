SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510066L_1] (@MJW_Transfer_Number_RS char(21), @MJW_Transfer_Number_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Transfer_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Transfer_Date, PERIODID, MJW_Transfer_Reason, MJW_Offering_ID, MJW_Series_ID, MJW_Transfer_From_Invest, MJW_Transfer_To_Investor, MJW_Transfer_Type, MJW_Death_Date, BSSI_Facility_ID, NOTEINDX, DEX_ROW_ID FROM .B0510066 ORDER BY MJW_Transfer_Number DESC END ELSE IF @MJW_Transfer_Number_RS = @MJW_Transfer_Number_RE BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Transfer_Date, PERIODID, MJW_Transfer_Reason, MJW_Offering_ID, MJW_Series_ID, MJW_Transfer_From_Invest, MJW_Transfer_To_Investor, MJW_Transfer_Type, MJW_Death_Date, BSSI_Facility_ID, NOTEINDX, DEX_ROW_ID FROM .B0510066 WHERE MJW_Transfer_Number = @MJW_Transfer_Number_RS ORDER BY MJW_Transfer_Number DESC END ELSE BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Transfer_Date, PERIODID, MJW_Transfer_Reason, MJW_Offering_ID, MJW_Series_ID, MJW_Transfer_From_Invest, MJW_Transfer_To_Investor, MJW_Transfer_Type, MJW_Death_Date, BSSI_Facility_ID, NOTEINDX, DEX_ROW_ID FROM .B0510066 WHERE MJW_Transfer_Number BETWEEN @MJW_Transfer_Number_RS AND @MJW_Transfer_Number_RE ORDER BY MJW_Transfer_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510066L_1] TO [DYNGRP]
GO
