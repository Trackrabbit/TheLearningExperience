CREATE TABLE [dbo].[ReportCenters]
(
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BPReport_Center] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportCenters] ADD CONSTRAINT [PKReportCenters] PRIMARY KEY CLUSTERED  ([PRODNAME], [Business_Desk_Report_Nam], [Report_Option], [BPReport_Center]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCenters].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCenters].[Report_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCenters].[PRODNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCenters].[BPReport_Center]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCenters].[MKTOPROC]'
GO
GRANT SELECT ON  [dbo].[ReportCenters] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportCenters] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportCenters] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportCenters] TO [DYNGRP]
GO
