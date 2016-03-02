SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699202L_3] (@BSSI_PortfolioID_RS char(25), @BSSI_WingID_RS char(25), @BSSI_PortfolioID_RE char(25), @BSSI_WingID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_WingID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699202 ORDER BY BSSI_PortfolioID DESC, BSSI_WingID DESC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_WingID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699202 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND BSSI_WingID BETWEEN @BSSI_WingID_RS AND @BSSI_WingID_RE ORDER BY BSSI_PortfolioID DESC, BSSI_WingID DESC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_WingID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699202 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND BSSI_WingID BETWEEN @BSSI_WingID_RS AND @BSSI_WingID_RE ORDER BY BSSI_PortfolioID DESC, BSSI_WingID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699202L_3] TO [DYNGRP]
GO