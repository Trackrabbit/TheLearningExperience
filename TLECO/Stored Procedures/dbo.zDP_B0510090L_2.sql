SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510090L_2] (@MJWOfferingTypeDescripti_RS char(65), @MJWOfferingTypeDescripti_RE char(65)) AS /* 12.00.0270.000 */ set nocount on IF @MJWOfferingTypeDescripti_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 ORDER BY MJWOfferingTypeDescripti DESC, DEX_ROW_ID DESC END ELSE IF @MJWOfferingTypeDescripti_RS = @MJWOfferingTypeDescripti_RE BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE MJWOfferingTypeDescripti = @MJWOfferingTypeDescripti_RS ORDER BY MJWOfferingTypeDescripti DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE MJWOfferingTypeDescripti BETWEEN @MJWOfferingTypeDescripti_RS AND @MJWOfferingTypeDescripti_RE ORDER BY MJWOfferingTypeDescripti DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510090L_2] TO [DYNGRP]
GO
