CREATE TABLE [dbo].[ReportNames]
(
[PRODID] [smallint] NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[RTPACHIN] [smallint] NOT NULL,
[RTGRSBIN] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportNames] ADD CONSTRAINT [PKReportNames] PRIMARY KEY NONCLUSTERED  ([PRODID], [RPTGRIND], [RTPACHIN], [RTGRSBIN]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1ReportNames] ON [dbo].[ReportNames] ([Business_Desk_Report_Nam], [RPTGRIND], [PRODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1ReportNames] ON [dbo].[ReportNames] ([Business_Desk_Report_Nam], [RPTGRIND], [PRODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportNames].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportNames].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportNames].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportNames].[RTPACHIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ReportNames].[RTGRSBIN]'
GO
GRANT SELECT ON  [dbo].[ReportNames] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportNames] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportNames] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportNames] TO [DYNGRP]
GO
