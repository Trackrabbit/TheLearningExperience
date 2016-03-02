CREATE TABLE [dbo].[ReportInternalNames]
(
[PRODID] [smallint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTGRNMS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Internal_Report_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportInternalNames] ADD CONSTRAINT [PKReportInternalNames] PRIMARY KEY CLUSTERED  ([PRODID], [RPTGRIND], [Business_Desk_Report_Nam], [RPTGRNMS], [Internal_Report_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportInternalNames].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportInternalNames].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportInternalNames].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportInternalNames].[RPTGRNMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportInternalNames].[Internal_Report_Name]'
GO
GRANT SELECT ON  [dbo].[ReportInternalNames] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportInternalNames] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportInternalNames] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportInternalNames] TO [DYNGRP]
GO
