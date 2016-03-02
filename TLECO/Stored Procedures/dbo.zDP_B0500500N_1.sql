SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500500N_1] (@BS int, @BSSI_InvestCategoryID char(25), @BSSI_InvestCategoryID_RS char(25), @BSSI_InvestCategoryID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_InvestCategoryID_RS IS NULL BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B0500500 WHERE ( BSSI_InvestCategoryID > @BSSI_InvestCategoryID ) ORDER BY BSSI_InvestCategoryID ASC END ELSE IF @BSSI_InvestCategoryID_RS = @BSSI_InvestCategoryID_RE BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B0500500 WHERE BSSI_InvestCategoryID = @BSSI_InvestCategoryID_RS AND ( BSSI_InvestCategoryID > @BSSI_InvestCategoryID ) ORDER BY BSSI_InvestCategoryID ASC END ELSE BEGIN SELECT TOP 25  BSSI_InvestCategoryID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B0500500 WHERE BSSI_InvestCategoryID BETWEEN @BSSI_InvestCategoryID_RS AND @BSSI_InvestCategoryID_RE AND ( BSSI_InvestCategoryID > @BSSI_InvestCategoryID ) ORDER BY BSSI_InvestCategoryID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500500N_1] TO [DYNGRP]
GO
