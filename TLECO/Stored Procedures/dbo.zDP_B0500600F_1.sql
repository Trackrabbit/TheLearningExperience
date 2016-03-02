SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500600F_1] (@BSSI_InvestmentType_RS char(7), @BSSI_InvestmentType_RE char(7)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_InvestmentType_RS IS NULL BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe, DEX_ROW_ID FROM .B0500600 ORDER BY BSSI_InvestmentType ASC END ELSE IF @BSSI_InvestmentType_RS = @BSSI_InvestmentType_RE BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe, DEX_ROW_ID FROM .B0500600 WHERE BSSI_InvestmentType = @BSSI_InvestmentType_RS ORDER BY BSSI_InvestmentType ASC END ELSE BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe, DEX_ROW_ID FROM .B0500600 WHERE BSSI_InvestmentType BETWEEN @BSSI_InvestmentType_RS AND @BSSI_InvestmentType_RE ORDER BY BSSI_InvestmentType ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500600F_1] TO [DYNGRP]
GO
