SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510280SS_2] (@MJW_Investment_Number char(21), @VENDORID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, VENDORID, MJW_Year_Total, DEX_ROW_ID FROM .B0510280 WHERE MJW_Investment_Number = @MJW_Investment_Number AND VENDORID = @VENDORID ORDER BY MJW_Investment_Number ASC, VENDORID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510280SS_2] TO [DYNGRP]
GO
