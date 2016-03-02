CREATE TABLE [dbo].[SVC00240]
(
[CALLNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVRECTYPE] [smallint] NOT NULL,
[SRVCCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TASKCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TASKREQ] [tinyint] NOT NULL,
[TASKCOMP] [tinyint] NOT NULL,
[TASKUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TASKDATE] [datetime] NOT NULL,
[TASKTIME] [datetime] NOT NULL,
[TASKETTC] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TASKATTC] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00240] ADD CONSTRAINT [CK__SVC00240__TASKTI__754E3E91] CHECK ((datepart(day,[TASKTIME])=(1) AND datepart(month,[TASKTIME])=(1) AND datepart(year,[TASKTIME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00240] ADD CONSTRAINT [CK__SVC00240__TASKDA__745A1A58] CHECK ((datepart(hour,[TASKDATE])=(0) AND datepart(minute,[TASKDATE])=(0) AND datepart(second,[TASKDATE])=(0) AND datepart(millisecond,[TASKDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00240] ADD CONSTRAINT [PKSVC00240] PRIMARY KEY NONCLUSTERED  ([CALLNBR], [SRVRECTYPE], [SRVCCD], [TASKCD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00240].[CALLNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00240].[SRVRECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00240].[SRVCCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00240].[TASKCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00240].[TASKREQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00240].[TASKCOMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00240].[TASKUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00240].[TASKDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00240].[TASKTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00240].[TASKETTC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00240].[TASKATTC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00240].[TECHID]'
GO
GRANT SELECT ON  [dbo].[SVC00240] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00240] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00240] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00240] TO [DYNGRP]
GO
