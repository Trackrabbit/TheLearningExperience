SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640700SS_2] (@BSSI_PortfolioID char(25), @LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, BSSI_PortfolioID, SALSTERR, BSSI_Site_TypeID, BSSI_Structure_TypeID, BSSI_Site_Status, BSSI_Site_Class_ID, BSSI_Site_Acquisition_Da, BSSI_Real_Estate_ID, BSSI_Latitude, BSSI_Latitude_Degree_Dec, BSSI_Latitude_Min, BSSI_Latitude_Sec, BSSI_Longitude, BSSI_Longitude_Degree_De, BSSI_longitudeMin, BSSI_longitudeSec, BSSI_Rev_Share, BSSI_Site_Class_Of_ID, BSSI_Construction_Date, BSSI_UnitClass_ID, BSSI_WingID, BSSI_FloorID, BSSI_OccupancyTypeID, BSSI_IsInterior, BSSI_MasterSiteID, BSSI_BeginDate, ENDDATE, DEX_ROW_ID, BSSI_Ground_Space FROM .B4640700 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND LOCNCODE = @LOCNCODE ORDER BY BSSI_PortfolioID ASC, LOCNCODE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640700SS_2] TO [DYNGRP]
GO
