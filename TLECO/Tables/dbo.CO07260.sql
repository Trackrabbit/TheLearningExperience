CREATE TABLE [dbo].[CO07260]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[RESID] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRS_Report_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CO07260] ADD CONSTRAINT [PKCO07260] PRIMARY KEY NONCLUSTERED  ([USERID], [DICTID], [RESID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO07260].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO07260].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO07260].[RESID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CO07260].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO07260].[URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CO07260].[SRS_Report_Name]'
GO
GRANT SELECT ON  [dbo].[CO07260] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CO07260] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CO07260] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CO07260] TO [DYNGRP]
GO
