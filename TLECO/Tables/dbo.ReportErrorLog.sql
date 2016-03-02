CREATE TABLE [dbo].[ReportErrorLog]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportErrorLog] ADD CONSTRAINT [PKReportErrorLog] PRIMARY KEY CLUSTERED  ([USERID], [PRODID], [RPTGRIND], [Business_Desk_Report_Nam], [Report_Option]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportErrorLog].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportErrorLog].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportErrorLog].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportErrorLog].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportErrorLog].[Report_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportErrorLog].[ERMSGTXT]'
GO
GRANT SELECT ON  [dbo].[ReportErrorLog] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportErrorLog] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportErrorLog] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportErrorLog] TO [DYNGRP]
GO
