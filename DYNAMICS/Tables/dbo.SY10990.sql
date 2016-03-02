CREATE TABLE [dbo].[SY10990]
(
[Language_ID] [smallint] NOT NULL,
[Deployed_Object_Name] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DICTID] [smallint] NOT NULL,
[Deployed_Type] [smallint] NOT NULL,
[Deployed_Module] [smallint] NOT NULL,
[Deployed_Series] [smallint] NOT NULL,
[Deployed_Server_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Deployed_WorkStation_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Deployed_Catalog] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[Deployed_Object] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY10990] ADD CONSTRAINT [PKSY10990] PRIMARY KEY NONCLUSTERED  ([Language_ID], [Deployed_Object_Name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY10990] ON [dbo].[SY10990] ([Language_ID], [DICTID], [Deployed_Type], [Deployed_Series], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10990].[Language_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10990].[Deployed_Object_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10990].[DICTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10990].[Deployed_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10990].[Deployed_Module]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY10990].[Deployed_Series]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10990].[Deployed_Server_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10990].[Deployed_WorkStation_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY10990].[Deployed_Catalog]'
GO
GRANT SELECT ON  [dbo].[SY10990] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY10990] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY10990] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY10990] TO [DYNGRP]
GO
