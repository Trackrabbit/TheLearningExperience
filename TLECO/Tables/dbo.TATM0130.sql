CREATE TABLE [dbo].[TATM0130]
(
[TIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[TIMETYPE_I] [smallint] NOT NULL,
[PAYRCORD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYTYPE] [smallint] NOT NULL,
[SENIORITY_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OVERTIMECODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HOURSOVERTIME_I] [int] NOT NULL,
[BSPAYRCD] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[WRNTIMEFALLSBLWZERO] [tinyint] NOT NULL,
[ACCRUETIMEBENEFITS_I] [tinyint] NOT NULL,
[GBTABEN] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TATM0130] ADD CONSTRAINT [CK__TATM0130__CHANGE__273B0374] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[TATM0130] ADD CONSTRAINT [PKTATM0130] PRIMARY KEY CLUSTERED  ([TIMECODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2TATM0130] ON [dbo].[TATM0130] ([DSCRIPTN], [TIMECODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4TATM0130] ON [dbo].[TATM0130] ([PAYRCORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3TATM0130] ON [dbo].[TATM0130] ([TIMETYPE_I], [TIMECODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATM0130].[TIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATM0130].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[TIMETYPE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATM0130].[PAYRCORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[PAYTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATM0130].[SENIORITY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATM0130].[OVERTIMECODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[HOURSOVERTIME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATM0130].[BSPAYRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[WRNTIMEFALLSBLWZERO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[ACCRUETIMEBENEFITS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TATM0130].[GBTABEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TATM0130].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TATM0130].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TATM0130].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[TATM0130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TATM0130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TATM0130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TATM0130] TO [DYNGRP]
GO
