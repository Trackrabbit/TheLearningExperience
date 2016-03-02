CREATE TABLE [dbo].[WSInstallSteps]
(
[InstallStep] [uniqueidentifier] NOT NULL,
[IsCompany] [smallint] NOT NULL,
[Description] [varchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WSInstallSteps] ADD CONSTRAINT [PK_WSInstallSteps] PRIMARY KEY CLUSTERED  ([InstallStep], [IsCompany]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[WSInstallSteps] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WSInstallSteps] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WSInstallSteps] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WSInstallSteps] TO [DYNGRP]
GO
