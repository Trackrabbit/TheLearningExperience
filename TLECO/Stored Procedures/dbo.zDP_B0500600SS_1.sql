SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500600SS_1] (@BSSI_InvestmentType char(7)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe, DEX_ROW_ID FROM .B0500600 WHERE BSSI_InvestmentType = @BSSI_InvestmentType ORDER BY BSSI_InvestmentType ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500600SS_1] TO [DYNGRP]
GO
