SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510040SS_1] (@MJW_Redemption_Number char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX, DEX_ROW_ID FROM .B0510040 WHERE MJW_Redemption_Number = @MJW_Redemption_Number ORDER BY MJW_Redemption_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510040SS_1] TO [DYNGRP]
GO
