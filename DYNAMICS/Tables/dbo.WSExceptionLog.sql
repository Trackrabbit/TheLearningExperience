CREATE TABLE [dbo].[WSExceptionLog]
(
[LogId] [uniqueidentifier] NOT NULL,
[ExceptionType] [smallint] NOT NULL,
[Exception] [image] NOT NULL,
[BusinessObjectType] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ServiceType] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SystemUser] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CompanyId] [int] NOT NULL,
[ExceptionMessage] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContextXML] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RequestXML] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_WSExceptionLog_CreatedDate] DEFAULT (getdate())
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSExceptionLog] ADD CONSTRAINT [PK_WSExceptionLog] PRIMARY KEY CLUSTERED  ([LogId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_WSExceptionLog_CreatedDate] ON [dbo].[WSExceptionLog] ([CreatedDate]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSExceptionLog] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSExceptionLog] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSExceptionLog] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSExceptionLog] TO [DYNGRP]
GO
