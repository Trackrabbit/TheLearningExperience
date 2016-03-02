CREATE TABLE [dbo].[WF40510]
(
[UsersListGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Type_Name] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DomainUserName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDisplayName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40510] ADD CONSTRAINT [CK__WF40510__ENDDATE__10FF15C3] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[WF40510] ADD CONSTRAINT [CK__WF40510__STRTDAT__11F339FC] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[WF40510] ADD CONSTRAINT [PKWF40510] PRIMARY KEY NONCLUSTERED  ([UsersListGuid], [Workflow_Type_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40510].[UsersListGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40510].[Workflow_Type_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40510].[DomainUserName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[WF40510].[ADDisplayName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF40510].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF40510].[ENDDATE]'
GO
GRANT SELECT ON  [dbo].[WF40510] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40510] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40510] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40510] TO [DYNGRP]
GO
