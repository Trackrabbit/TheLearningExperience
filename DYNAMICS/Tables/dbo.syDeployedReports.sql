CREATE TABLE [dbo].[syDeployedReports]
(
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[CompanyID] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ObjectType] [smallint] NOT NULL,
[ObjectID] [uniqueidentifier] NOT NULL,
[DeployedVersion] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DeployedPath] [varchar] (500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DeployedDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[syDeployedReports] ADD CONSTRAINT [PK_syDeployedReports] PRIMARY KEY CLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1_syDeployedReports] ON [dbo].[syDeployedReports] ([CompanyID], [ObjectType], [ObjectID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[syDeployedReports].[CompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[syDeployedReports].[ObjectType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[syDeployedReports].[DeployedVersion]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[syDeployedReports].[DeployedPath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[syDeployedReports].[DeployedDate]'
GO
GRANT SELECT ON  [dbo].[syDeployedReports] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[syDeployedReports] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[syDeployedReports] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[syDeployedReports] TO [DYNGRP]
GO
