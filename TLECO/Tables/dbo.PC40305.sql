CREATE TABLE [dbo].[PC40305]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEMPSEAT] [tinyint] NOT NULL,
[SEAT] [int] NOT NULL,
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
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40305] ADD CONSTRAINT [CK__PC40305__ENDDATE__5442B415] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[PC40305] ADD CONSTRAINT [CK__PC40305__Step_Ef__562AFC87] CHECK ((datepart(hour,[Step_Effective_Date])=(0) AND datepart(minute,[Step_Effective_Date])=(0) AND datepart(second,[Step_Effective_Date])=(0) AND datepart(millisecond,[Step_Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[PC40305] ADD CONSTRAINT [CK__PC40305__STRTDAT__5536D84E] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[PC40305] ADD CONSTRAINT [PKPC40305] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PC40305] ON [dbo].[PC40305] ([EXPIREDCB], [PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PC40305] ON [dbo].[PC40305] ([PLANCODE], [JOBTITLE], [SEAT], [EMPLOYID], [STRTDATE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40305].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40305].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[TEMPSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40305].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40305].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40305].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[ASSIGNMENTSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[PRIMARYPOSSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[EXPIREDCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[INHERITSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[Base_Step_Increased_On]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40305].[PYSTPTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[Step]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40305].[Step_Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40305].[PAYRATEBASEDON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40305].[PAYRATE]'
GO
GRANT SELECT ON  [dbo].[PC40305] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40305] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40305] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40305] TO [DYNGRP]
GO
