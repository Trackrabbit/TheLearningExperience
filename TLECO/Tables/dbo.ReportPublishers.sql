CREATE TABLE [dbo].[ReportPublishers]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportPublishers] ADD CONSTRAINT [PKReportPublishers] PRIMARY KEY CLUSTERED  ([USERID], [PRODID], [RPTGRIND], [Business_Desk_Report_Nam], [Report_Option]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ReportPublishers] ON [dbo].[ReportPublishers] ([PRODID], [RPTGRIND], [Business_Desk_Report_Nam], [Report_Option], [USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportPublishers].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportPublishers].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportPublishers].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportPublishers].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportPublishers].[Report_Option]'
GO
GRANT SELECT ON  [dbo].[ReportPublishers] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportPublishers] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportPublishers] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportPublishers] TO [DYNGRP]
GO
