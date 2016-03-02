CREATE TABLE [dbo].[ReportUserPrefs]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASKECHTM] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportUserPrefs] ADD CONSTRAINT [PKReportUserPrefs] PRIMARY KEY CLUSTERED  ([USERID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ReportUserPrefs].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ReportUserPrefs].[ASKECHTM]'
GO
GRANT SELECT ON  [dbo].[ReportUserPrefs] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ReportUserPrefs] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ReportUserPrefs] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ReportUserPrefs] TO [DYNGRP]
GO
