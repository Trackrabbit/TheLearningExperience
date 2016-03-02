SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510090SI] (@MJW_Offering_Type char(21), @MJWOfferingTypeDescripti char(65), @BSSI_InvestOrFund smallint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510090 (MJW_Offering_Type, MJWOfferingTypeDescripti, BSSI_InvestOrFund, NOTEINDX) VALUES ( @MJW_Offering_Type, @MJWOfferingTypeDescripti, @BSSI_InvestOrFund, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510090SI] TO [DYNGRP]
GO
