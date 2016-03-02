SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510047SS_1] (@MJW_Redemption_Number char(21), @MJW_Investment_Number char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Redemption_Number, MJW_Investment_Number, MJW_Investor_ID, MJW_Offering_ID, MJW_Series_ID, MJW_Redemption_Type, MJW_Units_Redeemed, MJW_Return_Capital, MJW_Redemption_Date, MJW_FEIN_Number, MJW_Certificate_Number, MJW_Redemption_Amount, MJW_NewInvestmentNumber, DEX_ROW_ID FROM .B0510047 WHERE MJW_Redemption_Number = @MJW_Redemption_Number AND MJW_Investment_Number = @MJW_Investment_Number ORDER BY MJW_Redemption_Number ASC, MJW_Investment_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510047SS_1] TO [DYNGRP]
GO
