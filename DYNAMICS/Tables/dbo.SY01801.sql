CREATE TABLE [dbo].[SY01801]
(
[CMPANYID] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[Offline_Date] [datetime] NOT NULL,
[Offline_Time] [datetime] NOT NULL,
[Offline_User] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Online_Date] [datetime] NOT NULL,
[Online_Time] [datetime] NOT NULL,
[Online_User] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01801] ADD CONSTRAINT [CK__SY01801__Offline__1D67E83A] CHECK ((datepart(day,[Offline_Time])=(1) AND datepart(month,[Offline_Time])=(1) AND datepart(year,[Offline_Time])=(1900)))
GO
ALTER TABLE [dbo].[SY01801] ADD CONSTRAINT [CK__SY01801__Online___1F5030AC] CHECK ((datepart(day,[Online_Time])=(1) AND datepart(month,[Online_Time])=(1) AND datepart(year,[Online_Time])=(1900)))
GO
ALTER TABLE [dbo].[SY01801] ADD CONSTRAINT [CK__SY01801__Offline__1C73C401] CHECK ((datepart(hour,[Offline_Date])=(0) AND datepart(minute,[Offline_Date])=(0) AND datepart(second,[Offline_Date])=(0) AND datepart(millisecond,[Offline_Date])=(0)))
GO
ALTER TABLE [dbo].[SY01801] ADD CONSTRAINT [CK__SY01801__Online___1E5C0C73] CHECK ((datepart(hour,[Online_Date])=(0) AND datepart(minute,[Online_Date])=(0) AND datepart(second,[Online_Date])=(0) AND datepart(millisecond,[Online_Date])=(0)))
GO
ALTER TABLE [dbo].[SY01801] ADD CONSTRAINT [PKSY01801] PRIMARY KEY CLUSTERED  ([SEQNUMBR], [CMPANYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01801].[CMPANYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01801].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01801].[Offline_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01801].[Offline_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01801].[Offline_User]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01801].[Online_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01801].[Online_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01801].[Online_User]'
GO
GRANT SELECT ON  [dbo].[SY01801] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01801] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01801] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01801] TO [DYNGRP]
GO
