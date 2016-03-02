CREATE TABLE [dbo].[POP40900]
(
[SETUPKEY] [smallint] NOT NULL,
[DocDelivTempPath] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DocDelivEmailSubj] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DocDelivFaxSubj] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DocDelivStatusRecipient] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[DocDelivEmailBodyText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DocDelivFaxCoverPgText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[POP40900] ADD CONSTRAINT [PKPOP40900] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP40900].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40900].[DocDelivTempPath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40900].[DocDelivEmailSubj]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40900].[DocDelivFaxSubj]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP40900].[DocDelivStatusRecipient]'
GO
GRANT SELECT ON  [dbo].[POP40900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP40900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP40900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP40900] TO [DYNGRP]
GO
