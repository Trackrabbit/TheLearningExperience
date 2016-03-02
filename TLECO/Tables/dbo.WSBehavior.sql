CREATE TABLE [dbo].[WSBehavior]
(
[BehaviorId] [uniqueidentifier] NOT NULL,
[ResXAssemblyName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DescriptionResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NameResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSBehavior] ADD CONSTRAINT [PK_WSBehavior] PRIMARY KEY CLUSTERED  ([BehaviorId]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSBehavior] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSBehavior] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSBehavior] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSBehavior] TO [DYNGRP]
GO
