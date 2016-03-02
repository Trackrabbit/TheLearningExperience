SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640015N_3] (@BS int, @BSSI_PortfolioID char(25), @BSSI_Template_ID char(25), @BSSI_PortfolioID_RS char(25), @BSSI_Template_ID_RS char(25), @BSSI_PortfolioID_RE char(25), @BSSI_Template_ID_RE char(25)) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_Dummy, DEX_ROW_ID FROM .B4640015 WHERE ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Template_ID > @BSSI_Template_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Template_ID ASC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_Dummy, DEX_ROW_ID FROM .B4640015 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND BSSI_Template_ID BETWEEN @BSSI_Template_ID_RS AND @BSSI_Template_ID_RE AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Template_ID > @BSSI_Template_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Template_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Template_ID, DSCRIPTN, BSSI_MajorStoreSqFt, BSSI_Dummy, DEX_ROW_ID FROM .B4640015 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND BSSI_Template_ID BETWEEN @BSSI_Template_ID_RS AND @BSSI_Template_ID_RE AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Template_ID > @BSSI_Template_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Template_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640015N_3] TO [DYNGRP]
GO