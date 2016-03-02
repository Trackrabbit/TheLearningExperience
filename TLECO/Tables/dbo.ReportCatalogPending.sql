CREATE TABLE [dbo].[ReportCatalogPending]
(
[Business_Desk_Report_Nam] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Report_Option] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_Date_Published] [datetime] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MKDTOPST] [tinyint] NOT NULL,
[Identity_Column] [int] NOT NULL,
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ListviewIndex] [int] NOT NULL,
[RPTGRIND] [smallint] NOT NULL,
[PRODID] [smallint] NOT NULL,
[UserIDTime] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportCatalogPending] ADD CONSTRAINT [CK__ReportCat__Last___7C2624A9] CHECK ((datepart(hour,[Last_Date_Published])=(0) AND datepart(minute,[Last_Date_Published])=(0) AND datepart(second,[Last_Date_Published])=(0) AND datepart(millisecond,[Last_Date_Published])=(0)))
GO
ALTER TABLE [dbo].[ReportCatalogPending] ADD CONSTRAINT [PKReportCatalogPending] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1ReportCatalogPending] ON [dbo].[ReportCatalogPending] ([Identity_Column]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1ReportCatalogPending] ON [dbo].[ReportCatalogPending] ([Identity_Column], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ReportCatalogPending] ON [dbo].[ReportCatalogPending] ([ListviewIndex], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ReportCatalogPending] ON [dbo].[ReportCatalogPending] ([MKDTOPST], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ReportCatalogPending] ON [dbo].[ReportCatalogPending] ([PRODNAME], [RPTGRIND], [Business_Desk_Report_Nam], [Report_Option], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalogPending].[Business_Desk_Report_Nam]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalogPending].[Report_Option]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ReportCatalogPending].[Last_Date_Published]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalogPending].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCatalogPending].[MKDTOPST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCatalogPending].[Identity_Column]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalogPending].[PRODNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCatalogPending].[ListviewIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCatalogPending].[RPTGRIND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportCatalogPending].[PRODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportCatalogPending].[UserIDTime]'
GO
GRANT SELECT ON  [dbo].[ReportCatalogPending] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportCatalogPending] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportCatalogPending] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportCatalogPending] TO [DYNGRP]
GO
