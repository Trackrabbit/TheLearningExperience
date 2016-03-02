CREATE TABLE [dbo].[WorkflowTrackingHistory]
(
[WorkflowID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GPWorkflowID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BusinessObjKey] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WorkflowTrackingHistory] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkflowTrackingHistory] ADD CONSTRAINT [WorkflowTrackingHistoryIdx_ID] PRIMARY KEY NONCLUSTERED  ([WorkflowID], [GPWorkflowID], [BusinessObjKey]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [WorkflowTrackingHistoryIdx_BusObjKey] ON [dbo].[WorkflowTrackingHistory] ([BusinessObjKey]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WorkflowTrackingHistory] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WorkflowTrackingHistory] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WorkflowTrackingHistory] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WorkflowTrackingHistory] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[WorkflowTrackingHistory] TO [DYNWORKFLOWGRP]
GO
GRANT INSERT ON  [dbo].[WorkflowTrackingHistory] TO [DYNWORKFLOWGRP]
GO
GRANT DELETE ON  [dbo].[WorkflowTrackingHistory] TO [DYNWORKFLOWGRP]
GO
GRANT UPDATE ON  [dbo].[WorkflowTrackingHistory] TO [DYNWORKFLOWGRP]
GO
