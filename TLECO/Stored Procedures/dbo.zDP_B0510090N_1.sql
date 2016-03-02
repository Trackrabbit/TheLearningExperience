SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510090N_1] (@BS int, @MJW_Offering_Type char(21), @MJW_Offering_Type_RS char(21), @MJW_Offering_Type_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Offering_Type_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE ( MJW_Offering_Type > @MJW_Offering_Type ) ORDER BY MJW_Offering_Type ASC END ELSE IF @MJW_Offering_Type_RS = @MJW_Offering_Type_RE BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE MJW_Offering_Type = @MJW_Offering_Type_RS AND ( MJW_Offering_Type > @MJW_Offering_Type ) ORDER BY MJW_Offering_Type ASC END ELSE BEGIN SELECT TOP 25  MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX, DEX_ROW_ID FROM .B0510090 WHERE MJW_Offering_Type BETWEEN @MJW_Offering_Type_RS AND @MJW_Offering_Type_RE AND ( MJW_Offering_Type > @MJW_Offering_Type ) ORDER BY MJW_Offering_Type ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510090N_1] TO [DYNGRP]
GO
