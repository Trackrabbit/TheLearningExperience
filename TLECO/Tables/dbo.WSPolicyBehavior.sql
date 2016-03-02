CREATE TABLE [dbo].[WSPolicyBehavior]
(
[PolicyId] [uniqueidentifier] NOT NULL,
[BehaviorId] [uniqueidentifier] NOT NULL,
[IsInternal] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSPolicyBehavior] ADD CONSTRAINT [PK_WSPolicyBehavior] PRIMARY KEY CLUSTERED  ([PolicyId], [BehaviorId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSPolicyBehavior] ADD CONSTRAINT [FK_WSPolicyBehavior_WSBehavior] FOREIGN KEY ([BehaviorId]) REFERENCES [dbo].[WSBehavior] ([BehaviorId])
GO
ALTER TABLE [dbo].[WSPolicyBehavior] ADD CONSTRAINT [FK_WSPolicyBehavior_WSPolicy] FOREIGN KEY ([PolicyId]) REFERENCES [dbo].[WSPolicy] ([PolicyId])
GO
GRANT SELECT ON  [dbo].[WSPolicyBehavior] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSPolicyBehavior] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSPolicyBehavior] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSPolicyBehavior] TO [DYNGRP]
GO
