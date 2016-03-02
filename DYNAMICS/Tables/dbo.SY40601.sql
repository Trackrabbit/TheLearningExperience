CREATE TABLE [dbo].[SY40601]
(
[AssignNum] [int] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[AssignedUserID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TYPEID] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[Status] [smallint] NOT NULL,
[UserWhoCreated] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[AssignmentDate] [datetime] NOT NULL,
[Completion_Date] [datetime] NOT NULL,
[COMPLETEDBY] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[CMMTTEXT] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY40601] ADD CONSTRAINT [CK__SY40601__Assignm__39237A9A] CHECK ((datepart(hour,[AssignmentDate])=(0) AND datepart(minute,[AssignmentDate])=(0) AND datepart(second,[AssignmentDate])=(0) AND datepart(millisecond,[AssignmentDate])=(0)))
GO
ALTER TABLE [dbo].[SY40601] ADD CONSTRAINT [CK__SY40601__Complet__3A179ED3] CHECK ((datepart(hour,[Completion_Date])=(0) AND datepart(minute,[Completion_Date])=(0) AND datepart(second,[Completion_Date])=(0) AND datepart(millisecond,[Completion_Date])=(0)))
GO
ALTER TABLE [dbo].[SY40601] ADD CONSTRAINT [CK__SY40601__DUEDATE__3B0BC30C] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[SY40601] ADD CONSTRAINT [CK__SY40601__STRTDAT__3BFFE745] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SY40601] ADD CONSTRAINT [PKSY40601] PRIMARY KEY NONCLUSTERED  ([CMPANYID], [CmdDictID], [CmdFormID], [CmdID], [TYPEID], [AssignedUserID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY40601] ON [dbo].[SY40601] ([CMPANYID], [AssignNum]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY40601] ON [dbo].[SY40601] ([CMPANYID], [CmdDictID], [CmdFormID], [CmdID], [TYPEID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40601].[AssignNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40601].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40601].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40601].[CmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40601].[AssignedUserID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40601].[TYPEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40601].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40601].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40601].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40601].[UserWhoCreated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40601].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40601].[AssignmentDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40601].[Completion_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40601].[COMPLETEDBY]'
GO
GRANT SELECT ON  [dbo].[SY40601] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40601] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40601] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40601] TO [DYNGRP]
GO
