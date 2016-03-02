CREATE TABLE [dbo].[ReportCentersPending]
(
[Identity_Column] [int] NOT NULL,
[BPReport_Center] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UserIDTime] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportCentersPending] ADD CONSTRAINT [PKReportCentersPending] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ReportCentersPending] ON [dbo].[ReportCentersPending] ([BPReport_Center], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1ReportCentersPending] ON [dbo].[ReportCentersPending] ([Identity_Column], [BPReport_Center], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ReportCentersPending] ON [dbo].[ReportCentersPending] ([Identity_Column], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ReportCentersPending] ON [dbo].[ReportCentersPending] ([RPTGRIND], [PRODID], [Business_Desk_Report_Nam], [Report_Option], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCentersPending].[Identity_Column]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCentersPending].[BPReport_Center]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCentersPending].[MKTOPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCentersPending].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCentersPending].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCentersPending].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCentersPending].[Report_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCentersPending].[UserIDTime]'
GO
GRANT SELECT ON  [dbo].[ReportCentersPending] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportCentersPending] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportCentersPending] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportCentersPending] TO [DYNGRP]
GO
