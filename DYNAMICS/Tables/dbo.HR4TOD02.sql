CREATE TABLE [dbo].[HR4TOD02]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TODOSEQUENCE_I] [int] NOT NULL,
[DATETODO_I] [datetime] NOT NULL,
[TIMETODO_I] [datetime] NOT NULL,
[CATEGORYTODOLIST_I] [smallint] NOT NULL,
[PRIORITYTODOLIST_I] [smallint] NOT NULL,
[STATUSTODOLIST_I] [smallint] NOT NULL,
[ACTIVITYTODO_I] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID2_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Date_To_Do_Original] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HR4TOD02] ADD CONSTRAINT [CK__HR4TOD02__TIMETO__6B873F3A] CHECK ((datepart(day,[TIMETODO_I])=(1) AND datepart(month,[TIMETODO_I])=(1) AND datepart(year,[TIMETODO_I])=(1900)))
GO
ALTER TABLE [dbo].[HR4TOD02] ADD CONSTRAINT [CK__HR4TOD02__Date_T__6A931B01] CHECK ((datepart(hour,[Date_To_Do_Original])=(0) AND datepart(minute,[Date_To_Do_Original])=(0) AND datepart(second,[Date_To_Do_Original])=(0) AND datepart(millisecond,[Date_To_Do_Original])=(0)))
GO
ALTER TABLE [dbo].[HR4TOD02] ADD CONSTRAINT [CK__HR4TOD02__DATETO__699EF6C8] CHECK ((datepart(hour,[DATETODO_I])=(0) AND datepart(minute,[DATETODO_I])=(0) AND datepart(second,[DATETODO_I])=(0) AND datepart(millisecond,[DATETODO_I])=(0)))
GO
ALTER TABLE [dbo].[HR4TOD02] ADD CONSTRAINT [PKHR4TOD02] PRIMARY KEY CLUSTERED  ([USERID], [TODOSEQUENCE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4HR4TOD02] ON [dbo].[HR4TOD02] ([USERID], [DATETODO_I], [CATEGORYTODOLIST_I], [TIMETODO_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3HR4TOD02] ON [dbo].[HR4TOD02] ([USERID], [DATETODO_I], [TIMETODO_I], [ACTIVITYTODO_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2HR4TOD02] ON [dbo].[HR4TOD02] ([USERID], [DATETODO_I], [TIMETODO_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR4TOD02].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR4TOD02].[TODOSEQUENCE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR4TOD02].[DATETODO_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR4TOD02].[TIMETODO_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR4TOD02].[CATEGORYTODOLIST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR4TOD02].[PRIORITYTODOLIST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[HR4TOD02].[STATUSTODOLIST_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR4TOD02].[ACTIVITYTODO_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[HR4TOD02].[USERID2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[HR4TOD02].[Date_To_Do_Original]'
GO
GRANT SELECT ON  [dbo].[HR4TOD02] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HR4TOD02] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HR4TOD02] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HR4TOD02] TO [DYNGRP]
GO
