SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640070SI] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640070 (BSSI_PortfolioID, BSSI_Charge_ID, YEAR1) VALUES ( @BSSI_PortfolioID, @BSSI_Charge_ID, @YEAR1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640070SI] TO [DYNGRP]
GO