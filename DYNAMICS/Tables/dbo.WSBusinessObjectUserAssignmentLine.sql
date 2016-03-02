CREATE TABLE [dbo].[WSBusinessObjectUserAssignmentLine]
(
[HeaderId] [uniqueidentifier] NOT NULL,
[BusinessObjectKey] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSBusinessObjectUserAssignmentLine] ADD CONSTRAINT [PK_WSBusinessObjectUserAssignmentLine] PRIMARY KEY CLUSTERED  ([HeaderId], [BusinessObjectKey]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSBusinessObjectUserAssignmentLine] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSBusinessObjectUserAssignmentLine] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSBusinessObjectUserAssignmentLine] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSBusinessObjectUserAssignmentLine] TO [DYNGRP]
GO
