CREATE TABLE [dbo].[SY40800]
(
[SITENAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Server_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[System_Level_Reports] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SrsServerMode] [smallint] NOT NULL,
[SrsReportServerUrl] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SrsReportManagerUrl] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SrsSharePointSite] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SrsReportLibrary] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRS_Reports_on_Home_Page] [tinyint] NOT NULL,
[ExcelReportLocation] [smallint] NOT NULL,
[ExcelReportsSystemFolder] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExcelReportsUserFolder] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExcelSharePointSite] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExcelDataConnectionLibra] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExcelReportsLibrary] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CrmCredentialsMethod] [smallint] NOT NULL,
[CrmServiceUrl] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SrsTenant] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MR_ServiceUrl] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MR_DesignerAppPath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40800] ADD CONSTRAINT [PKSY40800] PRIMARY KEY NONCLUSTERED  ([SITENAME]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[SITENAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[Report_Server_URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[System_Level_Reports]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40800].[SrsServerMode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[SrsReportServerUrl]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[SrsReportManagerUrl]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[SrsSharePointSite]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[SrsReportLibrary]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40800].[SRS_Reports_on_Home_Page]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40800].[ExcelReportLocation]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[ExcelReportsSystemFolder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[ExcelReportsUserFolder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[ExcelSharePointSite]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[ExcelDataConnectionLibra]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[ExcelReportsLibrary]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40800].[CrmCredentialsMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[CrmServiceUrl]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[SrsTenant]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[MR_ServiceUrl]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40800].[MR_DesignerAppPath]'
GO
GRANT SELECT ON  [dbo].[SY40800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40800] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY40800] TO [rpt_all user]
GO
