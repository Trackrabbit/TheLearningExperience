SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510030UN_2] (@BS int, @MJW_Series_ID char(21), @MJW_Series_ID_RS char(21), @MJW_Series_ID_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Series_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Series_ID, STRTDATE, MJW_Series_Close_Date, MJW_Units_Offered, MJW_Unit_Price, MJW_Liquidation_Market_P, MJW_Units_Sold, MJW_Liquidation_Date, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510030 WHERE ( MJW_Series_ID > @MJW_Series_ID ) ORDER BY MJW_Series_ID ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Series_ID_RS = @MJW_Series_ID_RE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Series_ID, STRTDATE, MJW_Series_Close_Date, MJW_Units_Offered, MJW_Unit_Price, MJW_Liquidation_Market_P, MJW_Units_Sold, MJW_Liquidation_Date, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510030 WHERE MJW_Series_ID = @MJW_Series_ID_RS AND ( MJW_Series_ID > @MJW_Series_ID ) ORDER BY MJW_Series_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_Series_ID, STRTDATE, MJW_Series_Close_Date, MJW_Units_Offered, MJW_Unit_Price, MJW_Liquidation_Market_P, MJW_Units_Sold, MJW_Liquidation_Date, NOTEINDX, DUMYRCRD, DEX_ROW_ID FROM .B0510030 WHERE MJW_Series_ID BETWEEN @MJW_Series_ID_RS AND @MJW_Series_ID_RE AND ( MJW_Series_ID > @MJW_Series_ID ) ORDER BY MJW_Series_ID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510030UN_2] TO [DYNGRP]
GO
