CREATE TABLE [dbo].[WSPolicyBehaviorSelectionParameter]
(
[PolicyId] [uniqueidentifier] NOT NULL,
[BehaviorId] [uniqueidentifier] NOT NULL,
[RoleId] [uniqueidentifier] NOT NULL,
[SelectedBehaviorOptionId] [smallint] NOT NULL,
[ParameterId] [smallint] NOT NULL,
[ParameterValue] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSPolicyBehaviorSelectionParameter] ADD CONSTRAINT [PK_WSPolicyBehaviorSelectionParameter] PRIMARY KEY CLUSTERED  ([PolicyId], [BehaviorId], [RoleId], [SelectedBehaviorOptionId], [ParameterId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSPolicyBehaviorSelectionParameter] ADD CONSTRAINT [FK_WSPolicyBehaviorSelectionParameter_WSParameter] FOREIGN KEY ([BehaviorId], [SelectedBehaviorOptionId], [ParameterId]) REFERENCES [dbo].[WSParameter] ([BehaviorId], [BehaviorOptionId], [ParameterId])
GO
ALTER TABLE [dbo].[WSPolicyBehaviorSelectionParameter] ADD CONSTRAINT [FK_WSPolicyBehaviorSelectionParameter_WSPolicyBehaviorSelection] FOREIGN KEY ([PolicyId], [BehaviorId], [RoleId]) REFERENCES [dbo].[WSPolicyBehaviorSelection] ([PolicyId], [BehaviorId], [RoleId])
GO
GRANT SELECT ON  [dbo].[WSPolicyBehaviorSelectionParameter] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSPolicyBehaviorSelectionParameter] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSPolicyBehaviorSelectionParameter] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSPolicyBehaviorSelectionParameter] TO [DYNGRP]
GO
