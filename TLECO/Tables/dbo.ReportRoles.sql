CREATE TABLE [dbo].[ReportRoles]
(
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BP_Role] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKTOPROC] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportRoles] ADD CONSTRAINT [PKReportRoles] PRIMARY KEY CLUSTERED  ([PRODNAME], [Business_Desk_Report_Nam], [Report_Option], [BP_Role]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRoles].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRoles].[PRODNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRoles].[Report_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportRoles].[BP_Role]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportRoles].[MKTOPROC]'
GO
GRANT SELECT ON  [dbo].[ReportRoles] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportRoles] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportRoles] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportRoles] TO [DYNGRP]
GO
