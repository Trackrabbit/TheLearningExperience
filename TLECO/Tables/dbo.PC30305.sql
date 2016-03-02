CREATE TABLE [dbo].[PC30305]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEMPSEAT] [tinyint] NOT NULL,
[SEAT] [int] NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[SEQ_I] [int] NOT NULL,
[CHANGETIME_I] [datetime] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[ASSIGNMENTSTATUS] [smallint] NOT NULL,
[PRIMARYPOSSEAT] [tinyint] NOT NULL,
[EXPIREDCB] [tinyint] NOT NULL,
[INHERITSTATUS] [smallint] NOT NULL,
[Base_Step_Increased_On] [smallint] NOT NULL,
[PYSTPTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Step] [smallint] NOT NULL,
[Step_Effective_Date] [datetime] NOT NULL,
[PAYRATEBASEDON] [smallint] NOT NULL,
[PAYRATE] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEREASON_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC30305] ADD CONSTRAINT [CK__PC30305__CHANGET__389A99A0] CHECK ((datepart(day,[CHANGETIME_I])=(1) AND datepart(month,[CHANGETIME_I])=(1) AND datepart(year,[CHANGETIME_I])=(1900)))
GO
ALTER TABLE [dbo].[PC30305] ADD CONSTRAINT [CK__PC30305__CHANGED__37A67567] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[PC30305] ADD CONSTRAINT [CK__PC30305__ENDDATE__398EBDD9] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[PC30305] ADD CONSTRAINT [CK__PC30305__Step_Ef__3B77064B] CHECK ((datepart(hour,[Step_Effective_Date])=(0) AND datepart(minute,[Step_Effective_Date])=(0) AND datepart(second,[Step_Effective_Date])=(0) AND datepart(millisecond,[Step_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[PC30305] ADD CONSTRAINT [CK__PC30305__STRTDAT__3A82E212] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[PC30305] ADD CONSTRAINT [PKPC30305] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [SEQNUMBR], [CHANGEDATE_I], [SEQ_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30305].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30305].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[TEMPSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30305].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[SEQ_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30305].[CHANGETIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30305].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30305].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30305].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[ASSIGNMENTSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[PRIMARYPOSSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[EXPIREDCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[INHERITSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[Base_Step_Increased_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30305].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC30305].[Step_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC30305].[PAYRATEBASEDON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC30305].[PAYRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30305].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC30305].[CHANGEREASON_I]'
GO
GRANT SELECT ON  [dbo].[PC30305] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC30305] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC30305] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC30305] TO [DYNGRP]
GO
