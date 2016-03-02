CREATE TABLE [dbo].[SY08130]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DICTID] [smallint] NOT NULL,
[METRICID] [smallint] NOT NULL,
[URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRS_Report_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY08130] ADD CONSTRAINT [PKSY08130] PRIMARY KEY NONCLUSTERED  ([USERID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08130].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08130].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08130].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY08130].[METRICID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08130].[URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY08130].[SRS_Report_Name]'
GO
GRANT SELECT ON  [dbo].[SY08130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY08130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY08130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY08130] TO [DYNGRP]
GO
