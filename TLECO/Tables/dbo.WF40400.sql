CREATE TABLE [dbo].[WF40400]
(
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WF_Notification_Action] [smallint] NOT NULL,
[WF_Notification_Enabled] [tinyint] NOT NULL,
[EmailMessageID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Notification_CC] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40400] ADD CONSTRAINT [PKWF40400] PRIMARY KEY NONCLUSTERED  ([Workflow_Type_Name], [Workflow_Name], [WF_Notification_Action]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40400].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40400].[Workflow_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40400].[WF_Notification_Action]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40400].[WF_Notification_Enabled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40400].[EmailMessageID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40400].[Workflow_Notification_CC]'
GO
GRANT SELECT ON  [dbo].[WF40400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40400] TO [DYNGRP]
GO
