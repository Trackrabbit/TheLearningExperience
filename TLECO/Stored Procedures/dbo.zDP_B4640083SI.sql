SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640083SI] (@BSSI_PortfolioID char(25), @BSSI_Description2 char(51), @BSSI_Facility_ID char(67), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_Description char(51), @YEAR1 smallint, @BSSI_BuildingExpenses numeric(19,5), @BSSI_BuilldingArea numeric(19,5), @BSSI_LeasedMallArea numeric(19,5), @BSSI_ExteriorLeaseArea numeric(19,5), @BSSI_ExteriorLeasedArea numeric(19,5), @BSSI_InteriorLeaseArea numeric(19,5), @BSSI_InteriorLeasedArea numeric(19,5), @DATE1 datetime, @BSSI_Is_Reversed tinyint, @USERID char(15), @BSSI_InteriorExpense numeric(19,5), @BSSI_ExteriorExpense numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640083 (BSSI_PortfolioID, BSSI_Description2, BSSI_Facility_ID, BSSI_Charge_ID, LNSEQNBR, BSSI_Description, YEAR1, BSSI_BuildingExpenses, BSSI_BuilldingArea, BSSI_LeasedMallArea, BSSI_ExteriorLeaseArea, BSSI_ExteriorLeasedArea, BSSI_InteriorLeaseArea, BSSI_InteriorLeasedArea, DATE1, BSSI_Is_Reversed, USERID, BSSI_InteriorExpense, BSSI_ExteriorExpense) VALUES ( @BSSI_PortfolioID, @BSSI_Description2, @BSSI_Facility_ID, @BSSI_Charge_ID, @LNSEQNBR, @BSSI_Description, @YEAR1, @BSSI_BuildingExpenses, @BSSI_BuilldingArea, @BSSI_LeasedMallArea, @BSSI_ExteriorLeaseArea, @BSSI_ExteriorLeasedArea, @BSSI_InteriorLeaseArea, @BSSI_InteriorLeasedArea, @DATE1, @BSSI_Is_Reversed, @USERID, @BSSI_InteriorExpense, @BSSI_ExteriorExpense) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640083SI] TO [DYNGRP]
GO
