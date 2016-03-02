SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699201N_2] (@BS int, @BSSI_PortfolioID char(25), @DEX_ROW_ID int, @BSSI_PortfolioID_RS char(25), @BSSI_PortfolioID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_FloorID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699201 WHERE ( BSSI_PortfolioID = @BSSI_PortfolioID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_FloorID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699201 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_FloorID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699201 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699201N_2] TO [DYNGRP]
GO
