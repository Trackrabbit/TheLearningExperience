SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510030SI] (@MJW_Offering_ID char(21), @MJW_Series_ID char(21), @STRTDATE datetime, @MJW_Series_Close_Date datetime, @MJW_Units_Offered numeric(19,5), @MJW_Unit_Price numeric(19,5), @MJW_Liquidation_Market_P numeric(19,5), @MJW_Units_Sold numeric(19,5), @MJW_Liquidation_Date datetime, @NOTEINDX numeric(19,5), @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510030 (MJW_Offering_ID, MJW_Series_ID, STRTDATE, MJW_Series_Close_Date, MJW_Units_Offered, MJW_Unit_Price, MJW_Liquidation_Market_P, MJW_Units_Sold, MJW_Liquidation_Date, NOTEINDX, DUMYRCRD) VALUES ( @MJW_Offering_ID, @MJW_Series_ID, @STRTDATE, @MJW_Series_Close_Date, @MJW_Units_Offered, @MJW_Unit_Price, @MJW_Liquidation_Market_P, @MJW_Units_Sold, @MJW_Liquidation_Date, @NOTEINDX, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510030SI] TO [DYNGRP]
GO
