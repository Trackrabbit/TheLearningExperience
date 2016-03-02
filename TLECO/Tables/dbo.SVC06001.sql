CREATE TABLE [dbo].[SVC06001]
(
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORKDYS_1] [tinyint] NOT NULL,
[WORKDYS_2] [tinyint] NOT NULL,
[WORKDYS_3] [tinyint] NOT NULL,
[WORKDYS_4] [tinyint] NOT NULL,
[WORKDYS_5] [tinyint] NOT NULL,
[WORKDYS_6] [tinyint] NOT NULL,
[WORKDYS_7] [tinyint] NOT NULL,
[WORKSTRT_1] [datetime] NOT NULL,
[WORKSTRT_2] [datetime] NOT NULL,
[WORKSTRT_3] [datetime] NOT NULL,
[WORKSTRT_4] [datetime] NOT NULL,
[WORKSTRT_5] [datetime] NOT NULL,
[WORKSTRT_6] [datetime] NOT NULL,
[WORKSTRT_7] [datetime] NOT NULL,
[WORKEND_1] [datetime] NOT NULL,
[WORKEND_2] [datetime] NOT NULL,
[WORKEND_3] [datetime] NOT NULL,
[WORKEND_4] [datetime] NOT NULL,
[WORKEND_5] [datetime] NOT NULL,
[WORKEND_6] [datetime] NOT NULL,
[WORKEND_7] [datetime] NOT NULL,
[PRETIME] [smallint] NOT NULL,
[POSTTIME] [smallint] NOT NULL,
[svcPostToPayroll] [tinyint] NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKEN__39E36000] CHECK ((datepart(day,[WORKEND_1])=(1) AND datepart(month,[WORKEND_1])=(1) AND datepart(year,[WORKEND_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKEN__3AD78439] CHECK ((datepart(day,[WORKEND_2])=(1) AND datepart(month,[WORKEND_2])=(1) AND datepart(year,[WORKEND_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKEN__3BCBA872] CHECK ((datepart(day,[WORKEND_3])=(1) AND datepart(month,[WORKEND_3])=(1) AND datepart(year,[WORKEND_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKEN__3CBFCCAB] CHECK ((datepart(day,[WORKEND_4])=(1) AND datepart(month,[WORKEND_4])=(1) AND datepart(year,[WORKEND_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKEN__3DB3F0E4] CHECK ((datepart(day,[WORKEND_5])=(1) AND datepart(month,[WORKEND_5])=(1) AND datepart(year,[WORKEND_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKEN__3EA8151D] CHECK ((datepart(day,[WORKEND_6])=(1) AND datepart(month,[WORKEND_6])=(1) AND datepart(year,[WORKEND_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKEN__3F9C3956] CHECK ((datepart(day,[WORKEND_7])=(1) AND datepart(month,[WORKEND_7])=(1) AND datepart(year,[WORKEND_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKST__40905D8F] CHECK ((datepart(day,[WORKSTRT_1])=(1) AND datepart(month,[WORKSTRT_1])=(1) AND datepart(year,[WORKSTRT_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKST__418481C8] CHECK ((datepart(day,[WORKSTRT_2])=(1) AND datepart(month,[WORKSTRT_2])=(1) AND datepart(year,[WORKSTRT_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKST__4278A601] CHECK ((datepart(day,[WORKSTRT_3])=(1) AND datepart(month,[WORKSTRT_3])=(1) AND datepart(year,[WORKSTRT_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKST__436CCA3A] CHECK ((datepart(day,[WORKSTRT_4])=(1) AND datepart(month,[WORKSTRT_4])=(1) AND datepart(year,[WORKSTRT_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKST__4460EE73] CHECK ((datepart(day,[WORKSTRT_5])=(1) AND datepart(month,[WORKSTRT_5])=(1) AND datepart(year,[WORKSTRT_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKST__455512AC] CHECK ((datepart(day,[WORKSTRT_6])=(1) AND datepart(month,[WORKSTRT_6])=(1) AND datepart(year,[WORKSTRT_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [CK__SVC06001__WORKST__464936E5] CHECK ((datepart(day,[WORKSTRT_7])=(1) AND datepart(month,[WORKSTRT_7])=(1) AND datepart(year,[WORKSTRT_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC06001] ADD CONSTRAINT [PKSVC06001] PRIMARY KEY CLUSTERED  ([STATIONID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06001] ON [dbo].[SVC06001] ([DSCRIPTN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06001].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06001].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06001].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06001].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[WORKDYS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[WORKDYS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[WORKDYS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[WORKDYS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[WORKDYS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[WORKDYS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[WORKDYS_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKSTRT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKSTRT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKSTRT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKSTRT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKSTRT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKSTRT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKSTRT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKEND_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKEND_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKEND_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKEND_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKEND_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKEND_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06001].[WORKEND_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[PRETIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[POSTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06001].[svcPostToPayroll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06001].[PAYRCORD]'
GO
GRANT SELECT ON  [dbo].[SVC06001] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06001] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06001] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06001] TO [DYNGRP]
GO
