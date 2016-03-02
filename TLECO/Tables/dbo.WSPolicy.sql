CREATE TABLE [dbo].[WSPolicy]
(
[PolicyId] [uniqueidentifier] NOT NULL,
[ResXAssemblyName] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NameResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RootBusinessObjectNameResXId] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSPolicy] ADD CONSTRAINT [PK_WSPolicy] PRIMARY KEY CLUSTERED  ([PolicyId]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSPolicy] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSPolicy] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSPolicy] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSPolicy] TO [DYNGRP]
GO
