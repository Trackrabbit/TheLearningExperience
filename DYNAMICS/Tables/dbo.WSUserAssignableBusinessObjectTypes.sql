CREATE TABLE [dbo].[WSUserAssignableBusinessObjectTypes]
(
[Id] [uniqueidentifier] NOT NULL,
[Name] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProviderAssembly] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProviderClass] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSUserAssignableBusinessObjectTypes] ADD CONSTRAINT [PK_WSUserAssignableBusinessObjectTypes] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSUserAssignableBusinessObjectTypes] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSUserAssignableBusinessObjectTypes] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSUserAssignableBusinessObjectTypes] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSUserAssignableBusinessObjectTypes] TO [DYNGRP]
GO
