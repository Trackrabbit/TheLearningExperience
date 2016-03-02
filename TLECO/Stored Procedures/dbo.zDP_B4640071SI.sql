SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640071SI] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LNSEQNBR numeric(19,5), @ACTINDX int, @BSSI_Sales_Amount numeric(19,5), @BSSI_InteriorPercent numeric(19,5), @BSSI_InteriorExpense numeric(19,5), @BSSI_ExteriorPercent numeric(19,5), @BSSI_ExteriorExpense numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640071 (BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LNSEQNBR, ACTINDX, BSSI_Sales_Amount, BSSI_InteriorPercent, BSSI_InteriorExpense, BSSI_ExteriorPercent, BSSI_ExteriorExpense) VALUES ( @BSSI_PortfolioID, @BSSI_Charge_ID, @YEAR1, @LNSEQNBR, @ACTINDX, @BSSI_Sales_Amount, @BSSI_InteriorPercent, @BSSI_InteriorExpense, @BSSI_ExteriorPercent, @BSSI_ExteriorExpense) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640071SI] TO [DYNGRP]
GO
