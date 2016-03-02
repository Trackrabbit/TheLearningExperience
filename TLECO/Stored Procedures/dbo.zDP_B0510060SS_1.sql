SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510060SS_1] (@MJW_Transfer_Number char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Transfer_Number, MJW_Transfer_Date, PERIODID, MJW_Transfer_Reason, MJW_Offering_ID, MJW_Series_ID, MJW_Transfer_From_Invest, MJW_Transfer_To_Investor, MJW_Transfer_Type, MJW_Death_Date, BSSI_Facility_ID, NOTEINDX, DEX_ROW_ID FROM .B0510060 WHERE MJW_Transfer_Number = @MJW_Transfer_Number ORDER BY MJW_Transfer_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510060SS_1] TO [DYNGRP]
GO
