CREATE TABLE [dbo].[ReportCatalog]
(
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Business_Desk_Report_Typ] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_Date_Published] [datetime] NOT NULL,
[Last_Time_Published] [datetime] NOT NULL,
[Report_Series] [smallint] NOT NULL,
[Reviewed] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportCatalog] ADD CONSTRAINT [CK__ReportCat__Last___7949B7FE] CHECK ((datepart(day,[Last_Time_Published])=(1) AND datepart(month,[Last_Time_Published])=(1) AND datepart(year,[Last_Time_Published])=(1900)))
GO
ALTER TABLE [dbo].[ReportCatalog] ADD CONSTRAINT [CK__ReportCat__Last___785593C5] CHECK ((datepart(hour,[Last_Date_Published])=(0) AND datepart(minute,[Last_Date_Published])=(0) AND datepart(second,[Last_Date_Published])=(0) AND datepart(millisecond,[Last_Date_Published])=(0)))
GO
ALTER TABLE [dbo].[ReportCatalog] ADD CONSTRAINT [PKReportCatalog] PRIMARY KEY CLUSTERED  ([PRODNAME], [Business_Desk_Report_Nam], [Report_Option], [Last_Date_Published], [Last_Time_Published]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalog].[PRODNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalog].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalog].[Report_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalog].[Business_Desk_Report_Typ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalog].[Report_URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportCatalog].[Last_Date_Published]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportCatalog].[Last_Time_Published]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCatalog].[Report_Series]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCatalog].[Reviewed]'
GO
GRANT SELECT ON  [dbo].[ReportCatalog] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportCatalog] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportCatalog] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportCatalog] TO [DYNGRP]
GO
