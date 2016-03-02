CREATE TABLE [dbo].[WF40300]
(
[DayOfWeek] [smallint] NOT NULL,
[IsWorkDay] [tinyint] NOT NULL,
[STRTTIME] [datetime] NOT NULL,
[ENDTIME] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WF40300] ADD CONSTRAINT [CK__WF40300__ENDTIME__06818750] CHECK ((datepart(day,[ENDTIME])=(1) AND datepart(month,[ENDTIME])=(1) AND datepart(year,[ENDTIME])=(1900)))
GO
ALTER TABLE [dbo].[WF40300] ADD CONSTRAINT [CK__WF40300__STRTTIM__0775AB89] CHECK ((datepart(day,[STRTTIME])=(1) AND datepart(month,[STRTTIME])=(1) AND datepart(year,[STRTTIME])=(1900)))
GO
ALTER TABLE [dbo].[WF40300] ADD CONSTRAINT [PKWF40300] PRIMARY KEY CLUSTERED  ([DayOfWeek]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40300].[DayOfWeek]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[WF40300].[IsWorkDay]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF40300].[STRTTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[WF40300].[ENDTIME]'
GO
GRANT SELECT ON  [dbo].[WF40300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[WF40300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[WF40300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[WF40300] TO [DYNGRP]
GO
