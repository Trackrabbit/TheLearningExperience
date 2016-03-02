SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699202L_1] (@BSSI_PortfolioID_RS char(25), @LNITMSEQ_RS int, @BSSI_PortfolioID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_WingID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699202 ORDER BY BSSI_PortfolioID DESC, LNITMSEQ DESC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_WingID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699202 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_PortfolioID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_WingID, LNITMSEQ, NOTEINDX, DEX_ROW_ID FROM .B4699202 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_PortfolioID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699202L_1] TO [DYNGRP]
GO
