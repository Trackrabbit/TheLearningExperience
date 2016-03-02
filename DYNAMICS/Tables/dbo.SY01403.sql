CREATE TABLE [dbo].[SY01403]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPANYID] [smallint] NOT NULL,
[CMRECNUM] [numeric] (19, 5) NOT NULL,
[APLICFIL] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Status] [smallint] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[RECURRINGTASK] [tinyint] NOT NULL,
[RECURPATTRN] [smallint] NOT NULL,
[FREQUENCY] [smallint] NOT NULL,
[FRQRCINT] [smallint] NOT NULL,
[DAYSOFTHEWEEK] [binary] (4) NOT NULL,
[MONTHINTERVAL] [smallint] NOT NULL,
[MTHSLCTD] [smallint] NOT NULL,
[DAYOFMONTH] [smallint] NOT NULL,
[WHICHWEEKDAY] [smallint] NOT NULL,
[WeekDay] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATETYPE] [smallint] NOT NULL,
[TIMETREP] [smallint] NOT NULL,
[ENDINGDT] [datetime] NOT NULL,
[Priority] [smallint] NOT NULL,
[Completion_Date] [datetime] NOT NULL,
[COMPLETEDBY] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TASKTYPE] [smallint] NOT NULL,
[LinkTo] [smallint] NOT NULL,
[CmdID] [smallint] NOT NULL,
[CmdFormID] [smallint] NOT NULL,
[CmdDictID] [smallint] NOT NULL,
[FilePath] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INET1] [char] (201) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDAT01] [datetime] NOT NULL,
[USRDAT02] [datetime] NOT NULL,
[USRDAT03] [datetime] NOT NULL,
[USRTSK01] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRTSK02] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRTSK03] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRTSK04] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRTSK05] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[TXTFIELD] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [CK__SY01403__Complet__6B24EA82] CHECK ((datepart(hour,[Completion_Date])=(0) AND datepart(minute,[Completion_Date])=(0) AND datepart(second,[Completion_Date])=(0) AND datepart(millisecond,[Completion_Date])=(0)))
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [CK__SY01403__DUEDATE__6C190EBB] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [CK__SY01403__ENDINGD__6D0D32F4] CHECK ((datepart(hour,[ENDINGDT])=(0) AND datepart(minute,[ENDINGDT])=(0) AND datepart(second,[ENDINGDT])=(0) AND datepart(millisecond,[ENDINGDT])=(0)))
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [CK__SY01403__STRTDAT__6E01572D] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [CK__SY01403__USRDAT0__6EF57B66] CHECK ((datepart(hour,[USRDAT01])=(0) AND datepart(minute,[USRDAT01])=(0) AND datepart(second,[USRDAT01])=(0) AND datepart(millisecond,[USRDAT01])=(0)))
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [CK__SY01403__USRDAT0__6FE99F9F] CHECK ((datepart(hour,[USRDAT02])=(0) AND datepart(minute,[USRDAT02])=(0) AND datepart(second,[USRDAT02])=(0) AND datepart(millisecond,[USRDAT02])=(0)))
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [CK__SY01403__USRDAT0__70DDC3D8] CHECK ((datepart(hour,[USRDAT03])=(0) AND datepart(minute,[USRDAT03])=(0) AND datepart(second,[USRDAT03])=(0) AND datepart(millisecond,[USRDAT03])=(0)))
GO
ALTER TABLE [dbo].[SY01403] ADD CONSTRAINT [PKSY01403] PRIMARY KEY NONCLUSTERED  ([CMRECNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY01403] ON [dbo].[SY01403] ([USERID], [Status], [Completion_Date], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01403] ON [dbo].[SY01403] ([USERID], [Status], [DUEDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY01403].[CMRECNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[APLICFIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01403].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[RECURRINGTASK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[RECURPATTRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[FREQUENCY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[FRQRCINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[DAYSOFTHEWEEK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[MONTHINTERVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[MTHSLCTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[DAYOFMONTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[WHICHWEEKDAY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[WeekDay]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01403].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[ENDDATETYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[TIMETREP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01403].[ENDINGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01403].[Completion_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[COMPLETEDBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[CRUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[TASKTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[LinkTo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[CmdID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[CmdFormID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01403].[CmdDictID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[FilePath]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[INET1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01403].[USRDAT01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01403].[USRDAT02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01403].[USRDAT03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[USRTSK01]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[USRTSK02]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[USRTSK03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[USRTSK04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01403].[USRTSK05]'
GO
GRANT SELECT ON  [dbo].[SY01403] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01403] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01403] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01403] TO [DYNGRP]
GO
