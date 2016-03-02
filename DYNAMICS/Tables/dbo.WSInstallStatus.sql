CREATE TABLE [dbo].[WSInstallStatus]
(
[DatabaseName] [varchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InstallStep] [uniqueidentifier] NOT NULL,
[Status] [smallint] NOT NULL,
[VersionMajor] [int] NOT NULL,
[VersionMinor] [int] NOT NULL,
[VersionBuild] [int] NOT NULL,
[VersionRevision] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSInstallStatus] ADD CONSTRAINT [PK_WSInstallStatus] PRIMARY KEY CLUSTERED  ([DatabaseName], [InstallStep]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSInstallStatus] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSInstallStatus] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSInstallStatus] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSInstallStatus] TO [DYNGRP]
GO
