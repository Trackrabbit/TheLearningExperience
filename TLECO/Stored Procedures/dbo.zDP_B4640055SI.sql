SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640055SI] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @BSSI_Tenant_Lease_Number char(25), @NAME char(31), @LOCNCODE char(11), @LNSEQNBR numeric(19,5), @LOCNDSCR char(31), @STRTDATE datetime, @ENDDATE datetime, @BSSI_OccupancyFactor numeric(19,5), @BSSI_Leased_Space_SF numeric(19,5), @BSSI_WeighedOccupiedArea numeric(19,5), @BSSI_DaysOccupied smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640055 (BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, BSSI_Tenant_Lease_Number, NAME, LOCNCODE, LNSEQNBR, LOCNDSCR, STRTDATE, ENDDATE, BSSI_OccupancyFactor, BSSI_Leased_Space_SF, BSSI_WeighedOccupiedArea, BSSI_DaysOccupied) VALUES ( @BSSI_PortfolioID, @BSSI_Charge_ID, @YEAR1, @BSSI_Tenant_Lease_Number, @NAME, @LOCNCODE, @LNSEQNBR, @LOCNDSCR, @STRTDATE, @ENDDATE, @BSSI_OccupancyFactor, @BSSI_Leased_Space_SF, @BSSI_WeighedOccupiedArea, @BSSI_DaysOccupied) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640055SI] TO [DYNGRP]
GO
