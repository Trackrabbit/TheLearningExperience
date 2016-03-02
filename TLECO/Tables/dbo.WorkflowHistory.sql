CREATE TABLE [dbo].[WorkflowHistory]
(
[WFHistoryIndex] [int] NOT NULL IDENTITY(1, 1),
[WorkflowID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BusinessObjKey] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowHistoryID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowHistory] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkflowHistory] ADD CONSTRAINT [WorkflowHistoryIdx_ID] PRIMARY KEY NONCLUSTERED  ([WFHistoryIndex], [WorkflowID], [BusinessObjKey], [WorkflowHistoryID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WorkflowHistoryIdx_WrkflwHistID] ON [dbo].[WorkflowHistory] ([WorkflowHistoryID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WorkflowHistory] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WorkflowHistory] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WorkflowHistory] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WorkflowHistory] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[WorkflowHistory] TO [DYNWORKFLOWGRP]
GO
GRANT INSERT ON  [dbo].[WorkflowHistory] TO [DYNWORKFLOWGRP]
GO
GRANT DELETE ON  [dbo].[WorkflowHistory] TO [DYNWORKFLOWGRP]
GO
GRANT UPDATE ON  [dbo].[WorkflowHistory] TO [DYNWORKFLOWGRP]
GO
