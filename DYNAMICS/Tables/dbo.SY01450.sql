CREATE TABLE [dbo].[SY01450]
(
[Backup_Schedule_Name] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[DAYSOFTHEWEEK] [binary] (4) NOT NULL,
[TIME1] [datetime] NOT NULL,
[ENABLED] [tinyint] NOT NULL,
[DBNAME] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[fileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WeeksToWait] [smallint] NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[Last_Successful_Backup] [datetime] NOT NULL,
[Last_Failed_Backup] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY01450] ADD CONSTRAINT [CK__SY01450__TIME1__7A672E12] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SY01450] ADD CONSTRAINT [CK__SY01450__CREATDD__778AC167] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY01450] ADD CONSTRAINT [CK__SY01450__Last_Fa__787EE5A0] CHECK ((datepart(hour,[Last_Failed_Backup])=(0) AND datepart(minute,[Last_Failed_Backup])=(0) AND datepart(second,[Last_Failed_Backup])=(0) AND datepart(millisecond,[Last_Failed_Backup])=(0)))
GO
ALTER TABLE [dbo].[SY01450] ADD CONSTRAINT [CK__SY01450__Last_Su__797309D9] CHECK ((datepart(hour,[Last_Successful_Backup])=(0) AND datepart(minute,[Last_Successful_Backup])=(0) AND datepart(second,[Last_Successful_Backup])=(0) AND datepart(millisecond,[Last_Successful_Backup])=(0)))
GO
ALTER TABLE [dbo].[SY01450] ADD CONSTRAINT [PKSY01450] PRIMARY KEY NONCLUSTERED  ([Backup_Schedule_Name]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01450].[Backup_Schedule_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01450].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01450].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01450].[DAYSOFTHEWEEK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01450].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01450].[ENABLED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01450].[DBNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01450].[fileName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01450].[WeeksToWait]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01450].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01450].[Last_Successful_Backup]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01450].[Last_Failed_Backup]'
GO
GRANT SELECT ON  [dbo].[SY01450] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01450] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01450] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01450] TO [DYNGRP]
GO
