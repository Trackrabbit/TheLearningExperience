CREATE TABLE [dbo].[WF00100]
(
[SETUPKEY] [smallint] NOT NULL,
[EnableWFNotifService] [tinyint] NOT NULL,
[Web_Service_Server] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Web_Service_Server_Port] [int] NOT NULL,
[Web_Service_Server_SSL] [tinyint] NOT NULL,
[Enable_Workflow_Email] [tinyint] NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSPLNAME] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERVERID] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Server_Port] [int] NOT NULL,
[IsSSL] [tinyint] NOT NULL,
[SMTP_Authentication] [smallint] NOT NULL,
[SMTP_User] [char] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMTP_Password] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF00100] ADD CONSTRAINT [PKWF00100] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[EnableWFNotifService]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF00100].[Web_Service_Server]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[Web_Service_Server_Port]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[Web_Service_Server_SSL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[Enable_Workflow_Email]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF00100].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF00100].[DSPLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF00100].[SERVERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[Server_Port]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[IsSSL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF00100].[SMTP_Authentication]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF00100].[SMTP_User]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF00100].[SMTP_Password]'
GO
GRANT SELECT ON  [dbo].[WF00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF00100] TO [DYNGRP]
GO
