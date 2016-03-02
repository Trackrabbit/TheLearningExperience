CREATE TABLE [dbo].[WSPolicyBehaviorSelection]
(
[PolicyId] [uniqueidentifier] NOT NULL,
[BehaviorId] [uniqueidentifier] NOT NULL,
[RoleId] [uniqueidentifier] NOT NULL,
[SelectedBehaviorOptionId] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSPolicyBehaviorSelection] ADD CONSTRAINT [PK_WSPolicyBehaviorSelection] PRIMARY KEY CLUSTERED  ([PolicyId], [BehaviorId], [RoleId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSPolicyBehaviorSelection] ADD CONSTRAINT [FK_WSPolicyBehaviorSelection_WSBehaviorOption] FOREIGN KEY ([BehaviorId], [SelectedBehaviorOptionId]) REFERENCES [dbo].[WSBehaviorOption] ([BehaviorId], [BehaviorOptionId])
GO
ALTER TABLE [dbo].[WSPolicyBehaviorSelection] ADD CONSTRAINT [FK_WSPolicyBehaviorSelection_WSPolicyBehavior] FOREIGN KEY ([PolicyId], [BehaviorId]) REFERENCES [dbo].[WSPolicyBehavior] ([PolicyId], [BehaviorId])
GO
GRANT SELECT ON  [dbo].[WSPolicyBehaviorSelection] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSPolicyBehaviorSelection] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSPolicyBehaviorSelection] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSPolicyBehaviorSelection] TO [DYNGRP]
GO
