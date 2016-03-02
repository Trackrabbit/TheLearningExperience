SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510280F_2] (@MJW_Investment_Number_RS char(21), @VENDORID_RS char(15), @MJW_Investment_Number_RE char(21), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Investment_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, VENDORID, MJW_Year_Total, DEX_ROW_ID FROM .B0510280 ORDER BY MJW_Investment_Number ASC, VENDORID ASC END ELSE IF @MJW_Investment_Number_RS = @MJW_Investment_Number_RE BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, VENDORID, MJW_Year_Total, DEX_ROW_ID FROM .B0510280 WHERE MJW_Investment_Number = @MJW_Investment_Number_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY MJW_Investment_Number ASC, VENDORID ASC END ELSE BEGIN SELECT TOP 25  MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, VENDORID, MJW_Year_Total, DEX_ROW_ID FROM .B0510280 WHERE MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY MJW_Investment_Number ASC, VENDORID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510280F_2] TO [DYNGRP]
GO
