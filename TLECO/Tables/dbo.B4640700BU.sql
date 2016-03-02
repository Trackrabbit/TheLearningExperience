CREATE TABLE [dbo].[B4640700BU]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PortfolioID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_TypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Structure_TypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Status] [smallint] NOT NULL,
[BSSI_Site_Class_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Site_Acquisition_Da] [datetime] NOT NULL,
[BSSI_Real_Estate_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Latitude] [smallint] NOT NULL,
[BSSI_Latitude_Degree_Dec] [numeric] (19, 9) NOT NULL,
[BSSI_Latitude_Min] [smallint] NOT NULL,
[BSSI_Latitude_Sec] [numeric] (19, 5) NOT NULL,
[BSSI_Longitude] [smallint] NOT NULL,
[BSSI_Longitude_Degree_De] [numeric] (19, 9) NOT NULL,
[BSSI_longitudeMin] [smallint] NOT NULL,
[BSSI_longitudeSec] [numeric] (19, 5) NOT NULL,
[BSSI_Rev_Share] [smallint] NOT NULL,
[BSSI_Site_Class_Of_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Construction_Date] [datetime] NOT NULL,
[BSSI_UnitClass_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_WingID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_FloorID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OccupancyTypeID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_IsInterior] [smallint] NOT NULL,
[BSSI_MasterSiteID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BeginDate] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Ground_Space] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_PortfolioID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_Site_TypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_Structure_TypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640700BU].[BSSI_Site_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_Site_Class_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640700BU].[BSSI_Site_Acquisition_Da]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_Real_Estate_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640700BU].[BSSI_Latitude]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640700BU].[BSSI_Latitude_Degree_Dec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640700BU].[BSSI_Latitude_Min]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640700BU].[BSSI_Latitude_Sec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640700BU].[BSSI_Longitude]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640700BU].[BSSI_Longitude_Degree_De]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640700BU].[BSSI_longitudeMin]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4640700BU].[BSSI_longitudeSec]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640700BU].[BSSI_Rev_Share]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_Site_Class_Of_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640700BU].[BSSI_Construction_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_UnitClass_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_WingID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_FloorID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_OccupancyTypeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4640700BU].[BSSI_IsInterior]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4640700BU].[BSSI_MasterSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640700BU].[BSSI_BeginDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4640700BU].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[B4640700BU] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4640700BU] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4640700BU] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4640700BU] TO [DYNGRP]
GO
