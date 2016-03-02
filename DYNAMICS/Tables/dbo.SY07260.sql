CREATE TABLE [dbo].[SY07260]
(
[ListDictID] [smallint] NOT NULL,
[ListID] [smallint] NOT NULL,
[ViewID] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[URL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRS_Report_Name] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY07260] ADD CONSTRAINT [PKSY07260] PRIMARY KEY NONCLUSTERED  ([ListDictID], [ListID], [ViewID], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07260].[ListDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07260].[ListID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07260].[ViewID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY07260].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07260].[URL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY07260].[SRS_Report_Name]'
GO
GRANT SELECT ON  [dbo].[SY07260] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY07260] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY07260] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY07260] TO [DYNGRP]
GO
