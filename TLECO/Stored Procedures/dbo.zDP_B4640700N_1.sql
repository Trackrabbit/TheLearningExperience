SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640700N_1] (@BS int, @LOCNCODE char(11), @LOCNCODE_RS char(11), @LOCNCODE_RE char(11)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, BSSI_PortfolioID, SALSTERR, BSSI_Site_TypeID, BSSI_Structure_TypeID, BSSI_Site_Status, BSSI_Site_Class_ID, BSSI_Site_Acquisition_Da, BSSI_Real_Estate_ID, BSSI_Latitude, BSSI_Latitude_Degree_Dec, BSSI_Latitude_Min, BSSI_Latitude_Sec, BSSI_Longitude, BSSI_Longitude_Degree_De, BSSI_longitudeMin, BSSI_longitudeSec, BSSI_Rev_Share, BSSI_Site_Class_Of_ID, BSSI_Construction_Date, BSSI_UnitClass_ID, BSSI_WingID, BSSI_FloorID, BSSI_OccupancyTypeID, BSSI_IsInterior, BSSI_MasterSiteID, BSSI_BeginDate, ENDDATE, DEX_ROW_ID, BSSI_Ground_Space FROM .B4640700 WHERE ( LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, BSSI_PortfolioID, SALSTERR, BSSI_Site_TypeID, BSSI_Structure_TypeID, BSSI_Site_Status, BSSI_Site_Class_ID, BSSI_Site_Acquisition_Da, BSSI_Real_Estate_ID, BSSI_Latitude, BSSI_Latitude_Degree_Dec, BSSI_Latitude_Min, BSSI_Latitude_Sec, BSSI_Longitude, BSSI_Longitude_Degree_De, BSSI_longitudeMin, BSSI_longitudeSec, BSSI_Rev_Share, BSSI_Site_Class_Of_ID, BSSI_Construction_Date, BSSI_UnitClass_ID, BSSI_WingID, BSSI_FloorID, BSSI_OccupancyTypeID, BSSI_IsInterior, BSSI_MasterSiteID, BSSI_BeginDate, ENDDATE, DEX_ROW_ID, BSSI_Ground_Space FROM .B4640700 WHERE LOCNCODE = @LOCNCODE_RS AND ( LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, BSSI_PortfolioID, SALSTERR, BSSI_Site_TypeID, BSSI_Structure_TypeID, BSSI_Site_Status, BSSI_Site_Class_ID, BSSI_Site_Acquisition_Da, BSSI_Real_Estate_ID, BSSI_Latitude, BSSI_Latitude_Degree_Dec, BSSI_Latitude_Min, BSSI_Latitude_Sec, BSSI_Longitude, BSSI_Longitude_Degree_De, BSSI_longitudeMin, BSSI_longitudeSec, BSSI_Rev_Share, BSSI_Site_Class_Of_ID, BSSI_Construction_Date, BSSI_UnitClass_ID, BSSI_WingID, BSSI_FloorID, BSSI_OccupancyTypeID, BSSI_IsInterior, BSSI_MasterSiteID, BSSI_BeginDate, ENDDATE, DEX_ROW_ID, BSSI_Ground_Space FROM .B4640700 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ( LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640700N_1] TO [DYNGRP]
GO
