CREATE TABLE [dbo].[ReportRolesPending]
(
[Identity_Column] [int] NOT NULL,
[BP_GUID] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BP_Role] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODID] [smallint] NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[UserIDTime] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportRolesPending] ADD CONSTRAINT [PKReportRolesPending] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ReportRolesPending] ON [dbo].[ReportRolesPending] ([BP_Role], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5ReportRolesPending] ON [dbo].[ReportRolesPending] ([Business_Desk_Report_Nam], [PRODID], [Report_Option], [RPTGRIND], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1ReportRolesPending] ON [dbo].[ReportRolesPending] ([Identity_Column], [BP_GUID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ReportRolesPending] ON [dbo].[ReportRolesPending] ([Identity_Column], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL4ReportRolesPending] ON [dbo].[ReportRolesPending] ([MKTOPROC]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ReportRolesPending] ON [dbo].[ReportRolesPending] ([MKTOPROC], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportRolesPending].[Identity_Column]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRolesPending].[BP_GUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRolesPending].[BP_Role]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportRolesPending].[MKTOPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRolesPending].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportRolesPending].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRolesPending].[Report_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportRolesPending].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRolesPending].[UserIDTime]'
GO
GRANT SELECT ON  [dbo].[ReportRolesPending] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportRolesPending] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportRolesPending] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportRolesPending] TO [DYNGRP]
GO
