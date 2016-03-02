SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640700L_8] (@BSSI_MasterSiteID_RS char(11), @BSSI_MasterSiteID_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_MasterSiteID_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, BSSI_PortfolioID, SALSTERR, BSSI_Site_TypeID, BSSI_Structure_TypeID, BSSI_Site_Status, BSSI_Site_Class_ID, BSSI_Site_Acquisition_Da, BSSI_Real_Estate_ID, BSSI_Latitude, BSSI_Latitude_Degree_Dec, BSSI_Latitude_Min, BSSI_Latitude_Sec, BSSI_Longitude, BSSI_Longitude_Degree_De, BSSI_longitudeMin, BSSI_longitudeSec, BSSI_Rev_Share, BSSI_Site_Class_Of_ID, BSSI_Construction_Date, BSSI_UnitClass_ID, BSSI_WingID, BSSI_FloorID, BSSI_OccupancyTypeID, BSSI_IsInterior, BSSI_MasterSiteID, BSSI_BeginDate, ENDDATE, DEX_ROW_ID, BSSI_Ground_Space FROM .B4640700 ORDER BY BSSI_MasterSiteID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_MasterSiteID_RS = @BSSI_MasterSiteID_RE BEGIN SELECT TOP 25  LOCNCODE, BSSI_PortfolioID, SALSTERR, BSSI_Site_TypeID, BSSI_Structure_TypeID, BSSI_Site_Status, BSSI_Site_Class_ID, BSSI_Site_Acquisition_Da, BSSI_Real_Estate_ID, BSSI_Latitude, BSSI_Latitude_Degree_Dec, BSSI_Latitude_Min, BSSI_Latitude_Sec, BSSI_Longitude, BSSI_Longitude_Degree_De, BSSI_longitudeMin, BSSI_longitudeSec, BSSI_Rev_Share, BSSI_Site_Class_Of_ID, BSSI_Construction_Date, BSSI_UnitClass_ID, BSSI_WingID, BSSI_FloorID, BSSI_OccupancyTypeID, BSSI_IsInterior, BSSI_MasterSiteID, BSSI_BeginDate, ENDDATE, DEX_ROW_ID, BSSI_Ground_Space FROM .B4640700 WHERE BSSI_MasterSiteID = @BSSI_MasterSiteID_RS ORDER BY BSSI_MasterSiteID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  LOCNCODE, BSSI_PortfolioID, SALSTERR, BSSI_Site_TypeID, BSSI_Structure_TypeID, BSSI_Site_Status, BSSI_Site_Class_ID, BSSI_Site_Acquisition_Da, BSSI_Real_Estate_ID, BSSI_Latitude, BSSI_Latitude_Degree_Dec, BSSI_Latitude_Min, BSSI_Latitude_Sec, BSSI_Longitude, BSSI_Longitude_Degree_De, BSSI_longitudeMin, BSSI_longitudeSec, BSSI_Rev_Share, BSSI_Site_Class_Of_ID, BSSI_Construction_Date, BSSI_UnitClass_ID, BSSI_WingID, BSSI_FloorID, BSSI_OccupancyTypeID, BSSI_IsInterior, BSSI_MasterSiteID, BSSI_BeginDate, ENDDATE, DEX_ROW_ID, BSSI_Ground_Space FROM .B4640700 WHERE BSSI_MasterSiteID BETWEEN @BSSI_MasterSiteID_RS AND @BSSI_MasterSiteID_RE ORDER BY BSSI_MasterSiteID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640700L_8] TO [DYNGRP]
GO
