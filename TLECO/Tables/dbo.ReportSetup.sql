CREATE TABLE [dbo].[ReportSetup]
(
[SETUPKEY] [smallint] NOT NULL,
[Report_URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Next_Report_File_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XPRTFTYP] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportSetup] ADD CONSTRAINT [PKReportSetup] PRIMARY KEY CLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSetup].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSetup].[Report_URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportSetup].[Next_Report_File_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportSetup].[XPRTFTYP]'
GO
GRANT SELECT ON  [dbo].[ReportSetup] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportSetup] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportSetup] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportSetup] TO [DYNGRP]
GO
