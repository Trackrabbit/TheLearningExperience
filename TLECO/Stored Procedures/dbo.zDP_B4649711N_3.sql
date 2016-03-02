SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4649711N_3] (@BS int, @BSSI_PortfolioID char(25), @BSSI_Contact_Option smallint, @DEX_ROW_ID int, @BSSI_PortfolioID_RS char(25), @BSSI_Contact_Option_RS smallint, @BSSI_PortfolioID_RE char(25), @BSSI_Contact_Option_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, NOTEINDX, DEX_ROW_ID FROM .B4649711 WHERE ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Contact_Option = @BSSI_Contact_Option AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Contact_Option > @BSSI_Contact_Option OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Contact_Option ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, NOTEINDX, DEX_ROW_ID FROM .B4649711 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND BSSI_Contact_Option BETWEEN @BSSI_Contact_Option_RS AND @BSSI_Contact_Option_RE AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Contact_Option = @BSSI_Contact_Option AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Contact_Option > @BSSI_Contact_Option OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Contact_Option ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, NOTEINDX, DEX_ROW_ID FROM .B4649711 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND BSSI_Contact_Option BETWEEN @BSSI_Contact_Option_RS AND @BSSI_Contact_Option_RE AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Contact_Option = @BSSI_Contact_Option AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Contact_Option > @BSSI_Contact_Option OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Contact_Option ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4649711N_3] TO [DYNGRP]
GO