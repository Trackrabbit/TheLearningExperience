CREATE TABLE [dbo].[WSBehaviorOption]
(
[BehaviorId] [uniqueidentifier] NOT NULL,
[BehaviorOptionId] [smallint] NOT NULL,
[ResXAssemblyName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DescriptionResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NameResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSBehaviorOption] ADD CONSTRAINT [PK_WSBehaviorOption] PRIMARY KEY CLUSTERED  ([BehaviorId], [BehaviorOptionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSBehaviorOption] ADD CONSTRAINT [FK_WSBehaviorOption_WSBehavior] FOREIGN KEY ([BehaviorId]) REFERENCES [dbo].[WSBehavior] ([BehaviorId])
GO
GRANT SELECT ON  [dbo].[WSBehaviorOption] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSBehaviorOption] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSBehaviorOption] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSBehaviorOption] TO [DYNGRP]
GO
