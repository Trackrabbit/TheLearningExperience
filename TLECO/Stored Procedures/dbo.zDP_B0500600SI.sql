SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500600SI] (@BSSI_InvestCategoryID char(25), @BSSI_InvestmentType char(7), @BSSI_InvestmentNextNumbe char(11), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0500600 (BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe) VALUES ( @BSSI_InvestCategoryID, @BSSI_InvestmentType, @BSSI_InvestmentNextNumbe) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500600SI] TO [DYNGRP]
GO
