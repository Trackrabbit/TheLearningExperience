CREATE TABLE [dbo].[SY10900]
(
[Language_ID] [smallint] NOT NULL,
[Deployment_Type] [smallint] NOT NULL,
[Deployed_Object_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Deployed_Type] [smallint] NOT NULL,
[System_Level_Data_Con] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[System_Level_Reports] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Deployed_Reas_for_Fail] [smallint] NOT NULL,
[Deployed_Series] [smallint] NOT NULL,
[Deployed_Status] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY10900] ADD CONSTRAINT [PKSY10900] PRIMARY KEY NONCLUSTERED  ([Language_ID], [Deployment_Type], [Deployed_Object_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10900].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10900].[Deployment_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10900].[Deployed_Object_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10900].[Deployed_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10900].[System_Level_Data_Con]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10900].[System_Level_Reports]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10900].[Deployed_Reas_for_Fail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10900].[Deployed_Series]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10900].[Deployed_Status]'
GO
GRANT SELECT ON  [dbo].[SY10900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY10900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY10900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY10900] TO [DYNGRP]
GO
