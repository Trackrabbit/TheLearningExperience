SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510046F_1] (@MJW_Redemption_Number_RS char(21), @MJW_Redemption_Number_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Redemption_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX, DEX_ROW_ID FROM .B0510046 ORDER BY MJW_Redemption_Number ASC END ELSE IF @MJW_Redemption_Number_RS = @MJW_Redemption_Number_RE BEGIN SELECT TOP 25  MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX, DEX_ROW_ID FROM .B0510046 WHERE MJW_Redemption_Number = @MJW_Redemption_Number_RS ORDER BY MJW_Redemption_Number ASC END ELSE BEGIN SELECT TOP 25  MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX, DEX_ROW_ID FROM .B0510046 WHERE MJW_Redemption_Number BETWEEN @MJW_Redemption_Number_RS AND @MJW_Redemption_Number_RE ORDER BY MJW_Redemption_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510046F_1] TO [DYNGRP]
GO
