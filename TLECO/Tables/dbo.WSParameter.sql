CREATE TABLE [dbo].[WSParameter]
(
[BehaviorId] [uniqueidentifier] NOT NULL,
[BehaviorOptionId] [smallint] NOT NULL,
[ParameterId] [smallint] NOT NULL,
[ResXAssemblyName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DescriptionResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NameResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSParameter] ADD CONSTRAINT [PK_WSParameter] PRIMARY KEY CLUSTERED  ([BehaviorId], [BehaviorOptionId], [ParameterId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSParameter] ADD CONSTRAINT [FK_WSParameter_WSBehaviorOption] FOREIGN KEY ([BehaviorId], [BehaviorOptionId]) REFERENCES [dbo].[WSBehaviorOption] ([BehaviorId], [BehaviorOptionId])
GO
GRANT SELECT ON  [dbo].[WSParameter] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSParameter] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSParameter] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSParameter] TO [DYNGRP]
GO
