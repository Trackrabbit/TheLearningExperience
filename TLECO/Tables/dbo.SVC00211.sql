CREATE TABLE [dbo].[SVC00211]
(
[SRVRECTYPE] [smallint] NOT NULL,
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Task_ID] [char] (34) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Task_Name] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[SVC_Escalation_Status] [smallint] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[SVC_Task_Start_Date] [int] NOT NULL,
[SVC_Task_Start_Time] [int] NOT NULL,
[SVC_Task_End_Date] [int] NOT NULL,
[SVC_Task_End_Time] [int] NOT NULL,
[SVC_Command_Text] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Task_Comment] [char] (99) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00211] ADD CONSTRAINT [CK__SVC00211__ENDTIM__614745E4] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00211] ADD CONSTRAINT [CK__SVC00211__TIME1__623B6A1D] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00211] ADD CONSTRAINT [CK__SVC00211__DATE1__5F5EFD72] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SVC00211] ADD CONSTRAINT [CK__SVC00211__ENDDAT__605321AB] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00211] ADD CONSTRAINT [PKSVC00211] PRIMARY KEY CLUSTERED  ([SRVRECTYPE], [CALLNBR], [SVC_Task_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00211].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00211].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00211].[SVC_Task_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00211].[SVC_Task_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00211].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00211].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00211].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00211].[SVC_Escalation_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00211].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00211].[ENDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00211].[SVC_Task_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00211].[SVC_Task_Start_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00211].[SVC_Task_End_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00211].[SVC_Task_End_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00211].[SVC_Command_Text]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00211].[SVC_Task_Comment]'
GO
GRANT SELECT ON  [dbo].[SVC00211] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00211] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00211] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00211] TO [DYNGRP]
GO
