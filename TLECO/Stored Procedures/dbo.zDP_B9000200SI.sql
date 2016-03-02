SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000200SI] (@BSSI_Collateral_ID char(25), @BSSI_Description char(51), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B9000200 (BSSI_Collateral_ID, BSSI_Description) VALUES ( @BSSI_Collateral_ID, @BSSI_Description) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000200SI] TO [DYNGRP]
GO
