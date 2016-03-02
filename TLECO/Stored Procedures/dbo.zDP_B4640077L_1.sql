SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640077L_1] (@BSSI_PortfolioID_RS char(25), @BSSI_Charge_ID_RS char(25), @YEAR1_RS smallint, @LNSEQNBR_RS numeric(19,5), @LOCNCODE_RS char(11), @From_Date_RS datetime, @TODATE_RS datetime, @BSSI_PortfolioID_RE char(25), @BSSI_Charge_ID_RE char(25), @YEAR1_RE smallint, @LNSEQNBR_RE numeric(19,5), @LOCNCODE_RE char(11), @From_Date_RE datetime, @TODATE_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, LNSEQNBR, YEAR1, LOCNCODE, LOCNDSCR, BSSI_Leased_Space_SF, BSSI_ExcludeFromGLA, From_Date, TODATE, BSSI_DaysOccupied, BSSI_OccupancyFactor, BSSI_WeighedOccupiedArea, DEX_ROW_ID FROM .B4640077 ORDER BY BSSI_PortfolioID DESC, BSSI_Charge_ID DESC, YEAR1 DESC, LNSEQNBR DESC, LOCNCODE DESC, From_Date DESC, TODATE DESC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, LNSEQNBR, YEAR1, LOCNCODE, LOCNDSCR, BSSI_Leased_Space_SF, BSSI_ExcludeFromGLA, From_Date, TODATE, BSSI_DaysOccupied, BSSI_OccupancyFactor, BSSI_WeighedOccupiedArea, DEX_ROW_ID FROM .B4640077 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND From_Date BETWEEN @From_Date_RS AND @From_Date_RE AND TODATE BETWEEN @TODATE_RS AND @TODATE_RE ORDER BY BSSI_PortfolioID DESC, BSSI_Charge_ID DESC, YEAR1 DESC, LNSEQNBR DESC, LOCNCODE DESC, From_Date DESC, TODATE DESC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, LNSEQNBR, YEAR1, LOCNCODE, LOCNDSCR, BSSI_Leased_Space_SF, BSSI_ExcludeFromGLA, From_Date, TODATE, BSSI_DaysOccupied, BSSI_OccupancyFactor, BSSI_WeighedOccupiedArea, DEX_ROW_ID FROM .B4640077 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND From_Date BETWEEN @From_Date_RS AND @From_Date_RE AND TODATE BETWEEN @TODATE_RS AND @TODATE_RE ORDER BY BSSI_PortfolioID DESC, BSSI_Charge_ID DESC, YEAR1 DESC, LNSEQNBR DESC, LOCNCODE DESC, From_Date DESC, TODATE DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640077L_1] TO [DYNGRP]
GO
