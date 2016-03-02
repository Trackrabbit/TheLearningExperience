CREATE TABLE [dbo].[AHRTA130]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[TIMETYPE_I] [smallint] NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[PRNAVAILTMEPYRL] [tinyint] NOT NULL,
[WRNTIMEFALLSBLWZERO] [tinyint] NOT NULL,
[SENIORITY_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SENIORITYDATE_I] [datetime] NOT NULL,
[NEXTACCRUALDATE_I] [datetime] NOT NULL,
[NEXTSENIORITYDATE_I] [datetime] NOT NULL,
[ACCRUETIMEBENEFITS_I] [tinyint] NOT NULL,
[WCID_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXCOUNT_I] [smallint] NOT NULL,
[HOURS_I] [int] NOT NULL,
[HOURSAVAILABLE_I] [int] NOT NULL,
[DAYSWRDK] [int] NOT NULL,
[WKSWRKD] [int] NOT NULL,
[HOURSACCYTD_I] [int] NOT NULL,
[HOURSCARRIEDOVER_I] [int] NOT NULL,
[HOURSPERYEAR_I] [int] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AHRTA130] ADD CONSTRAINT [CK__AHRTA130__CHANGE__42040849] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRTA130] ADD CONSTRAINT [CK__AHRTA130__NEXTAC__42F82C82] CHECK ((datepart(hour,[NEXTACCRUALDATE_I])=(0) AND datepart(minute,[NEXTACCRUALDATE_I])=(0) AND datepart(second,[NEXTACCRUALDATE_I])=(0) AND datepart(millisecond,[NEXTACCRUALDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRTA130] ADD CONSTRAINT [CK__AHRTA130__NEXTSE__43EC50BB] CHECK ((datepart(hour,[NEXTSENIORITYDATE_I])=(0) AND datepart(minute,[NEXTSENIORITYDATE_I])=(0) AND datepart(second,[NEXTSENIORITYDATE_I])=(0) AND datepart(millisecond,[NEXTSENIORITYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRTA130] ADD CONSTRAINT [CK__AHRTA130__SENIOR__44E074F4] CHECK ((datepart(hour,[SENIORITYDATE_I])=(0) AND datepart(minute,[SENIORITYDATE_I])=(0) AND datepart(second,[SENIORITYDATE_I])=(0) AND datepart(millisecond,[SENIORITYDATE_I])=(0)))
GO
ALTER TABLE [dbo].[AHRTA130] ADD CONSTRAINT [PKAHRTA130] PRIMARY KEY CLUSTERED  ([EMPID_I], [TIMECODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AHRTA130] ON [dbo].[AHRTA130] ([EMPID_I], [PRNAVAILTMEPYRL], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AHRTA130] ON [dbo].[AHRTA130] ([TIMECODE_I], [EMPID_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA130].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA130].[TIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[TIMETYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[PRNAVAILTMEPYRL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[WRNTIMEFALLSBLWZERO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA130].[SENIORITY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA130].[SENIORITYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA130].[NEXTACCRUALDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA130].[NEXTSENIORITYDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[ACCRUETIMEBENEFITS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA130].[WCID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[TRXCOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[HOURS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[HOURSAVAILABLE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[DAYSWRDK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[WKSWRKD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[HOURSACCYTD_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[HOURSCARRIEDOVER_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AHRTA130].[HOURSPERYEAR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AHRTA130].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AHRTA130].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AHRTA130].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[AHRTA130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AHRTA130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AHRTA130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AHRTA130] TO [DYNGRP]
GO
