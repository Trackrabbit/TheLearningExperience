SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510030SS_1] (@MJW_Offering_ID char(21), @MJW_Series_ID char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_ID, MJW_Series_ID, STRTDATE, MJW_Series_Close_Date, MJW_Units_Offered, MJW_Unit_Price, MJW_Liquidation_Market_P, MJW_Units_Sold, MJW_Liquidation_Date, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510030 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Series_ID = @MJW_Series_ID ORDER BY MJW_Offering_ID ASC, MJW_Series_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510030SS_1] TO [DYNGRP]
GO
