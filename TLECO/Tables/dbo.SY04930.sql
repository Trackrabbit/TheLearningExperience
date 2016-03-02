CREATE TABLE [dbo].[SY04930]
(
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Ord_Line] [int] NOT NULL,
[FieldName] [char] (79) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Email_Message_Type] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY04930] ADD CONSTRAINT [PKSY04930] PRIMARY KEY NONCLUSTERED  ([EmailMessageID], [Ord_Line]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY04930] ON [dbo].[SY04930] ([EmailMessageID], [Workflow_Type_Name], [Email_Message_Type], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04930].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04930].[Ord_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04930].[FieldName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY04930].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04930].[Email_Message_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY04930].[SEQNUMBR]'
GO
GRANT SELECT ON  [dbo].[SY04930] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY04930] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY04930] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY04930] TO [DYNGRP]
GO
