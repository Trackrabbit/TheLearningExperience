SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500600L_2] (@BSSI_InvestCategoryID_RS char(25), @BSSI_InvestmentType_RS char(7), @BSSI_InvestCategoryID_RE char(25), @BSSI_InvestmentType_RE char(7)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_InvestCategoryID_RS IS NULL BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe, DEX_ROW_ID FROM .B0500600 ORDER BY BSSI_InvestCategoryID DESC, BSSI_InvestmentType DESC END ELSE IF @BSSI_InvestCategoryID_RS = @BSSI_InvestCategoryID_RE BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe, DEX_ROW_ID FROM .B0500600 WHERE BSSI_InvestCategoryID = @BSSI_InvestCategoryID_RS AND BSSI_InvestmentType BETWEEN @BSSI_InvestmentType_RS AND @BSSI_InvestmentType_RE ORDER BY BSSI_InvestCategoryID DESC, BSSI_InvestmentType DESC END ELSE BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_InvestmentNextNumbe, DEX_ROW_ID FROM .B0500600 WHERE BSSI_InvestCategoryID BETWEEN @BSSI_InvestCategoryID_RS AND @BSSI_InvestCategoryID_RE AND BSSI_InvestmentType BETWEEN @BSSI_InvestmentType_RS AND @BSSI_InvestmentType_RE ORDER BY BSSI_InvestCategoryID DESC, BSSI_InvestmentType DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500600L_2] TO [DYNGRP]
GO
