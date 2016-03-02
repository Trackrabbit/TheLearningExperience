SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510090UN_2] (@BS int, @MJWOfferingTypeDescripti char(65), @MJWOfferingTypeDescripti_RS char(65), @MJWOfferingTypeDescripti_RE char(65)) AS /* 12.00.0270.000 */ set nocount on IF @MJWOfferingTypeDescripti_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE ( MJWOfferingTypeDescripti > @MJWOfferingTypeDescripti ) ORDER BY MJWOfferingTypeDescripti ASC, DEX_ROW_ID ASC END ELSE IF @MJWOfferingTypeDescripti_RS = @MJWOfferingTypeDescripti_RE BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE MJWOfferingTypeDescripti = @MJWOfferingTypeDescripti_RS AND ( MJWOfferingTypeDescripti > @MJWOfferingTypeDescripti ) ORDER BY MJWOfferingTypeDescripti ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE MJWOfferingTypeDescripti BETWEEN @MJWOfferingTypeDescripti_RS AND @MJWOfferingTypeDescripti_RE AND ( MJWOfferingTypeDescripti > @MJWOfferingTypeDescripti ) ORDER BY MJWOfferingTypeDescripti ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510090UN_2] TO [DYNGRP]
GO
