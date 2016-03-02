CREATE TABLE [dbo].[WSBusinessObjectUserAssignmentHeader]
(
[Id] [uniqueidentifier] NOT NULL,
[BusinessObjectTypeId] [uniqueidentifier] NOT NULL,
[UserWindowsIdentity] [varchar] (281) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrganizationKey] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSBusinessObjectUserAssignmentHeader] ADD CONSTRAINT [PK_WSBusinessObjectUserAssignment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_WSBusinessObjectUserAssignmentHeader] ON [dbo].[WSBusinessObjectUserAssignmentHeader] ([BusinessObjectTypeId], [UserWindowsIdentity], [OrganizationKey]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSBusinessObjectUserAssignmentHeader] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSBusinessObjectUserAssignmentHeader] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSBusinessObjectUserAssignmentHeader] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSBusinessObjectUserAssignmentHeader] TO [DYNGRP]
GO
