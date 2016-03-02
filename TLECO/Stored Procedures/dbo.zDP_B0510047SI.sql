SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510047SI] (@MJW_Redemption_Number char(21), @MJW_Investment_Number char(21), @MJW_Investor_ID char(21), @MJW_Offering_ID char(21), @MJW_Series_ID char(21), @MJW_Redemption_Type smallint, @MJW_Units_Redeemed numeric(19,5), @MJW_Return_Capital numeric(19,5), @MJW_Redemption_Date datetime, @MJW_FEIN_Number char(21), @MJW_Certificate_Number char(21), @MJW_Redemption_Amount numeric(19,5), @MJW_NewInvestmentNumber char(21), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510047 (MJW_Redemption_Number, MJW_Investment_Number, MJW_Investor_ID, MJW_Offering_ID, MJW_Series_ID, MJW_Redemption_Type, MJW_Units_Redeemed, MJW_Return_Capital, MJW_Redemption_Date, MJW_FEIN_Number, MJW_Certificate_Number, MJW_Redemption_Amount, MJW_NewInvestmentNumber) VALUES ( @MJW_Redemption_Number, @MJW_Investment_Number, @MJW_Investor_ID, @MJW_Offering_ID, @MJW_Series_ID, @MJW_Redemption_Type, @MJW_Units_Redeemed, @MJW_Return_Capital, @MJW_Redemption_Date, @MJW_FEIN_Number, @MJW_Certificate_Number, @MJW_Redemption_Amount, @MJW_NewInvestmentNumber) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510047SI] TO [DYNGRP]
GO
