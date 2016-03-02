SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601000SI] (@BSSI_Site_TypeID char(25), @BSSI_Description char(51), @BSSI_Revenue_Seg char(67), @BSSI_Cost_Seg char(67), @BSSI_Prepaid_Seg char(9), @BSSI_Ground_Rent_Seg char(67), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4601000 (BSSI_Site_TypeID, BSSI_Description, BSSI_Revenue_Seg, BSSI_Cost_Seg, BSSI_Prepaid_Seg, BSSI_Ground_Rent_Seg, NOTEINDX) VALUES ( @BSSI_Site_TypeID, @BSSI_Description, @BSSI_Revenue_Seg, @BSSI_Cost_Seg, @BSSI_Prepaid_Seg, @BSSI_Ground_Rent_Seg, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601000SI] TO [DYNGRP]
GO
