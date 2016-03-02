SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510280SI] (@MJW_Investment_Number char(21), @MJW_Offering_ID char(21), @MJW_Series_ID char(21), @VENDORID char(15), @MJW_Year_Total numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510280 (MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, VENDORID, MJW_Year_Total) VALUES ( @MJW_Investment_Number, @MJW_Offering_ID, @MJW_Series_ID, @VENDORID, @MJW_Year_Total) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510280SI] TO [DYNGRP]
GO
