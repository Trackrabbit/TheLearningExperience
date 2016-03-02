SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510040L_2] (@MJW_Redemption_Category_RS smallint, @MJW_Redemption_Number_RS char(21), @MJW_Redemption_Category_RE smallint, @MJW_Redemption_Number_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Redemption_Category_RS IS NULL BEGIN SELECT TOP 25  MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX, DEX_ROW_ID FROM .B0510040 ORDER BY MJW_Redemption_Category DESC, MJW_Redemption_Number DESC, DEX_ROW_ID DESC END ELSE IF @MJW_Redemption_Category_RS = @MJW_Redemption_Category_RE BEGIN SELECT TOP 25  MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX, DEX_ROW_ID FROM .B0510040 WHERE MJW_Redemption_Category = @MJW_Redemption_Category_RS AND MJW_Redemption_Number BETWEEN @MJW_Redemption_Number_RS AND @MJW_Redemption_Number_RE ORDER BY MJW_Redemption_Category DESC, MJW_Redemption_Number DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX, DEX_ROW_ID FROM .B0510040 WHERE MJW_Redemption_Category BETWEEN @MJW_Redemption_Category_RS AND @MJW_Redemption_Category_RE AND MJW_Redemption_Number BETWEEN @MJW_Redemption_Number_RS AND @MJW_Redemption_Number_RE ORDER BY MJW_Redemption_Category DESC, MJW_Redemption_Number DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510040L_2] TO [DYNGRP]
GO
