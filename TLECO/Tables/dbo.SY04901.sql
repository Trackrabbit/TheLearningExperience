CREATE TABLE [dbo].[SY04901]
(
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailDictionaryID] [smallint] NOT NULL,
[EmailSeriesID] [smallint] NOT NULL,
[EmailDocumentID] [smallint] NOT NULL,
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageDesc] [char] (151) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageSubject] [char] (151) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageFrom] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email_Message_Type] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[EmailReplyToAddress] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailMessageBody] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04901] ADD CONSTRAINT [PKSY04901] PRIMARY KEY NONCLUSTERED  ([EmailMessageID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04901] ON [dbo].[SY04901] ([EmailDictionaryID], [EmailSeriesID], [EmailMessageID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SY04901] ON [dbo].[SY04901] ([EmailDocumentID], [EmailMessageID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY04901] ON [dbo].[SY04901] ([EmailMessageDesc], [EmailMessageID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04901].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04901].[EmailDictionaryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04901].[EmailSeriesID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04901].[EmailDocumentID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04901].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04901].[EmailMessageDesc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04901].[EmailMessageSubject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04901].[EmailMessageFrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04901].[Email_Message_Type]'
GO
GRANT SELECT ON  [dbo].[SY04901] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04901] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04901] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04901] TO [DYNGRP]
GO
