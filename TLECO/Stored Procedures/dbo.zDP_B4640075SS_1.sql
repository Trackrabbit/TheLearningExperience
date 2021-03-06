SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640075SS_1] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LNSEQNBR numeric(19,5), @LOCNCODE char(11), @From_Date datetime, @TODATE datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LOCNCODE, LNSEQNBR, LOCNDSCR, BSSI_Leased_Space_SF, BSSI_ExcludeFromGLA, From_Date, TODATE, BSSI_DaysOccupied, BSSI_OccupancyFactor, BSSI_WeighedOccupiedArea, DEX_ROW_ID FROM .B4640075 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR = @LNSEQNBR AND LOCNCODE = @LOCNCODE AND From_Date = @From_Date AND TODATE = @TODATE ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, LNSEQNBR ASC, LOCNCODE ASC, From_Date ASC, TODATE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640075SS_1] TO [DYNGRP]
GO
