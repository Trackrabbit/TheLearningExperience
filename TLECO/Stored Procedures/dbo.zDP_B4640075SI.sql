SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640075SI] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @LOCNDSCR char(31), @BSSI_Leased_Space_SF numeric(19,5), @BSSI_ExcludeFromGLA tinyint, @From_Date datetime, @TODATE datetime, @BSSI_DaysOccupied smallint, @BSSI_OccupancyFactor numeric(19,5), @BSSI_WeighedOccupiedArea numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640075 (BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LOCNCODE, LNSEQNBR, LOCNDSCR, BSSI_Leased_Space_SF, BSSI_ExcludeFromGLA, From_Date, TODATE, BSSI_DaysOccupied, BSSI_OccupancyFactor, BSSI_WeighedOccupiedArea) VALUES ( @BSSI_PortfolioID, @BSSI_Charge_ID, @YEAR1, @LOCNCODE, @LNSEQNBR, @LOCNDSCR, @BSSI_Leased_Space_SF, @BSSI_ExcludeFromGLA, @From_Date, @TODATE, @BSSI_DaysOccupied, @BSSI_OccupancyFactor, @BSSI_WeighedOccupiedArea) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640075SI] TO [DYNGRP]
GO
