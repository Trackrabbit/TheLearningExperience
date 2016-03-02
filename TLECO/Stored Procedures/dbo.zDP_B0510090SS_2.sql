SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510090SS_2] (@MJWOfferingTypeDescripti char(65)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE MJWOfferingTypeDescripti = @MJWOfferingTypeDescripti ORDER BY MJWOfferingTypeDescripti ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510090SS_2] TO [DYNGRP]
GO
