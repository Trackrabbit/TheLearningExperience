SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4649703F_4] (@BSSI_PortfolioID_RS char(25), @ADRSCODE_RS char(15), @BSSI_PortfolioID_RE char(25), @ADRSCODE_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4649703 ORDER BY BSSI_PortfolioID ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4649703 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY BSSI_PortfolioID ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4649703 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY BSSI_PortfolioID ASC, ADRSCODE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4649703F_4] TO [DYNGRP]
GO
